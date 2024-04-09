import 'package:epsi_dle/main.dart';
import 'package:flutter/material.dart';
import 'classic.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu - Epsidle',
      home: MyHomePage(title: 'Menu - Epsidle'),
      routes: {
        '/screen': (context) => const ClassicScreen(),
      },
    );
  }
}


class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});


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
  child: Column(
    mainAxisSize: MainAxisSize.min, // Permet à la colonne de se réduire à la taille de son contenu
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/screen/classic.dart');
          print('Classic');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 142, 190, 84), // Couleur du bouton
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bordure arrondie du bouton
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8), // Ajuste l'espace entre l'image et le bord du bouton
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset (
                '../assets/images/interro.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8), // Ajoute un espace entre l'image et le texte
              const Text('Classic'), // Texte du bouton
            ],
          ),
        ),
      ),
      const SizedBox(height: 16), // Ajoute un espacement entre les boutons
      ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/screen/anecdote.dart');
          print('Anecdote');
        },
        style: ElevatedButton.styleFrom(
           backgroundColor: Color.fromARGB(255, 228, 128, 62), // Couleur du bouton
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bordure arrondie du bouton
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8), // Ajuste l'espace entre l'image et le bord du bouton
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset (
                '../assets/images/interro.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8), // Ajoute un espace entre l'image et le texte
              const Text('Anecdote'), // Texte du bouton
            ],
          ),
        ),
      ),
      const SizedBox(height: 16), // Ajoute un espacement entre les boutons
      ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context, '/screen/image.dart');
          print('Image');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 54, 182, 212), // Couleur du bouton
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bordure arrondie du bouton
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8), // Ajuste l'espace entre l'image et le bord du bouton
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset (
                '../assets/images/interro.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8), // Ajoute un espace entre l'image et le texte
              const Text('Image'), // Texte du bouton
            ],
          ),
        ),
        // Troisième bouton
      ),
    ],
  ),
)


          // Autre contenu ici, si nécessaire
        ],
      ),
    );
  }
}
