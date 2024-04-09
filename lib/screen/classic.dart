import 'package:flutter/material.dart';

class ClassicScreen extends StatelessWidget {
  const ClassicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: const Center(
        child: Text('Contenu de la page du menu'),
      ),
    );
  }
}