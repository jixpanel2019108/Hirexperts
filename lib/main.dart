import 'package:flutter/material.dart';
import 'package:hirexperts/routes/app_routes.dart';

import 'package:hirexperts/services/google_sign_in_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'package:hirexperts/themes/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HireXperts',
        theme: AppTheme.ligthTheme,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutes.initialRoute
      ),
    );
  }
}