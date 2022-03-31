import 'package:flutter/material.dart';

class NavigationModel with ChangeNotifier{

  int _paginaActual = 0;
  final PageController _pageController = new PageController();

  int get paginaActual => _paginaActual;

  PageController get pageController => _pageController;

  set paginaActual( int valor) {
    _paginaActual = valor;
    // _pageController.animateToPage(
    //   valor, 
    //   duration: const Duration(milliseconds: 250),
    //   curve: Curves.easeOut
    // );
    _pageController.jumpToPage(
      valor
    );
    notifyListeners();
  }

}