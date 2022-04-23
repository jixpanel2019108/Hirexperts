import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:hirexperts/screens/screens.dart';
import 'package:hirexperts/widgets/widgets.dart';
import 'package:hirexperts/models/provider_models/provider_models.dart';


class TabsScreen extends StatelessWidget {
   
  const TabsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationModel(),
      child: Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder:(context, snapshot){
            return _Pages();
          } 
          ),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
      );
    }
}

class _Pages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<NavigationModel>(context); 

    return PageView(
      controller: navegacionModel.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        HomeScreen(),
        ErrorScreen(),
        ProfileScreen(),
      ],
    );
  }
}

