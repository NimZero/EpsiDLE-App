import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Image de fond
          Positioned.fill(
            child: Image.asset(
              'assets/images/fond.png',
              fit: BoxFit.cover,
            ),
          ),
          // Logo en haut
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}