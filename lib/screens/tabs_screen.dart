import 'package:flutter/material.dart';
import 'package:hirexperts/screens/sreens.dart';
import 'package:provider/provider.dart';

import 'package:hirexperts/models/provider_models/provider_models.dart';
import 'package:hirexperts/widgets/widgets.dart';


class TabsScreen extends StatelessWidget {
   
  const TabsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new NavigationModel(),
      child: Scaffold(
        body: _Pages(),
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
      // physics: const BouncingScrollPhysics(),
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        HomeScreen(),
        ErrorScreen(),
        ProfileScreen(),
      ],
    );
  }
}

