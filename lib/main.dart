import 'package:flutter/material.dart';
import 'screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Epsidle',
      home: MyHomePage(title: 'Epsidle'),
      routes: {
        '/screen': (context) => const MenuScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Image de fond
          Positioned.fill(
            child: Image.asset(
              'assets/images/fond.png',
              fit: BoxFit
                  .cover, // Couvre toute la zone, en conservant les proportions
            ),
          ),
          // Logo en haut
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.all(20.0), // Un peu de marge autour du logo
              child: Image.asset(
                'assets/images/logo.png',
                height: 250, // Ajustez la taille de votre logo
              ),
            ),
          ),
          Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screen');

                    // Action à effectuer lors du clic sur le bouton de connexion avec Google
                    // Par exemple, ouvrir une fenêtre de connexion avec Google
                    // ignore: avoid_print
                    print('Connexion avec Google');
                  },
                  icon: Image.asset(
                    'assets/images/google.png', // Chemin de l'icône de Google dans votre dossier d'assets
                    width: 24, // Ajustez la taille de l'icône selon vos besoins
                    height: 24,
                  ),
                  label: const Text('Se connecter avec Google'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white, // Couleur du texte du bouton
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Bordure arrondie du bouton
                    ),
                  )))
          // Autre contenu ici, si nécessaire
        ],
      ),
    );
  }
}
