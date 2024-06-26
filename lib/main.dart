import 'package:epsi_dle/models/user.dart';
import 'package:epsi_dle/screens/classement_page.dart';
import 'package:flutter/material.dart';
import 'screens/menu_page.dart';
import 'screens/classic_page.dart';
import 'screens/image_page.dart';
import 'screens/anecdote_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Epsidle',
      home: const MyHomePage(title: 'Epsidle'),
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/classic': (context) => const ClassicPage(),
        '/image': (context) => const ImagePage(),
        '/anecdote': (context) => const AnecdotePage(),
        '/classement': (context) => ClassementPage(
              users: [
                User('Alice', 20),
                User('Bob', 15),
                User('Charlie', 25),
                User('David', 20),
                User('Emma', 15),
                User('Frank', 25),
              ],
            )
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.all(20.0), // Un peu de marge autour du logo
              child: Image.asset(
                'assets/images/logo_epsidle.png',
                height: 250, // Ajustez la taille de votre logo
              ),
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
                print('Connexion avec Google');
              },
              icon: Image.asset(
                'assets/images/logo_google.png',
                width: 24,
                height: 24,
              ),
              label: const Text('Se connecter avec Google'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
