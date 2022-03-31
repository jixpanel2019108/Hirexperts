import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:hirexperts/models/provider_models/provider_models.dart';

class BottomNavigationBarWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<NavigationModel>(context);

    return BottomNavigationBar(
      currentIndex: navegacionModel.paginaActual,
      onTap: (index) => navegacionModel.paginaActual = index,
      items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded),   label: "Para ti"),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Encuentra"),
        BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: "Mi Perfil"),
      ]
      );
  }
}