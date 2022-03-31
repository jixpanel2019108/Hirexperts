import 'package:flutter/material.dart';

import 'package:hirexperts/models/models.dart';
import 'package:hirexperts/screens/sreens.dart';


class AppRoutes{

  static const initialRoute = 'tabs';

  static final routeOptions = <RouteOption>[
    // RouteOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'tabs': (BuildContext context) => const TabsScreen()});

    for (final option in routeOptions) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen,});
    }

    return appRoutes;
  }

  static Route onGenerateRoute ( RouteSettings  settings ) {
    return MaterialPageRoute(
          builder: (context) => const  ErrorScreen()
          );
  } 
}