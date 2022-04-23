import 'package:flutter/material.dart';

import 'package:hirexperts/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.blur_on_rounded),
        title: const Text('HireXperts'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CardType1(
            imageUrl:'https://www.cemre.com/uploads/images/2021/05/image_750x_60afcaa6d2365.jpg'),
            ElevatedButton.icon(
              icon: const Icon(Icons.login), 
              label: const Text('Inicia Sesión con Google'), 
              onPressed: () {  },
            )
        ],
      ),
    );
  }
}
