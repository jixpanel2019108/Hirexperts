import 'package:flutter/material.dart' show IconData, Widget;

class  RouteOption {

  final String route;
  final String name;
  final Widget screen;
  final IconData icon;

  RouteOption({
    required this.route, 
    required this.name, 
    required this.screen, 
    required this.icon
    });

}