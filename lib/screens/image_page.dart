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
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Logo en haut
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/logo_epsidle.png',
                height: 150,
              ),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  icon: Image.asset(
                    'assets/images/home_button.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(86, 86, 160, 0.78),
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajustez le rayon selon vos besoins
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
