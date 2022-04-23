import 'package:flutter/material.dart';
import 'package:hirexperts/services/google_sign_in_service.dart';

import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:hirexperts/screens/screens.dart';
import 'package:hirexperts/models/provider_models/provider_models.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationModel(),
      child: Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder:(context, snapshot){

            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
            } else if (snapshot.hasData) {
              return const TabsScreen();
            } else if (snapshot.hasError){
              return const Center(child: Text('Algo salió mal'));
            } else {
              return const LoginBody();
            }
          } 
          ),
      ),
      );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.login), 
        label: const  Text('Inicia Sesión'), 
        onPressed: () { 
          final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.googleLogin();
        },
        
      ),
    );
  }
}