import 'package:epsi_dle/models/user.dart';
import 'package:flutter/material.dart';

class ClassementPage extends StatelessWidget {
  final List<User> users;
  const ClassementPage({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    users.sort((a, b) => b.pts.compareTo(a.pts)); // Trie décroissant
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
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(86, 86, 160, 0.78),
                    borderRadius: BorderRadius.circular(
                        20.0), // Ajustez le rayon selon vos besoins
                  ),
                  child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final user = users[index];
                        final rang = index + 1;
                        return buildUserTile(rang, user);
                      }),
                )),
          ),
        ],
      ),
    );
  }

  Widget buildUserTile(rang, User user) {
    String abbreviation = '';
    Color abbreviationColor = Colors.white;
    double fontSize = 20;

    if (rang == 1) {
      abbreviation = 'ST';
      abbreviationColor = const Color.fromRGBO(253, 218, 56, 1);
      fontSize = 40;
    } else if (rang == 2) {
      abbreviation = 'ND';
      abbreviationColor = const Color.fromRGBO(180, 180, 180, 1);
      fontSize = 35;
    } else if (rang == 3) {
      abbreviation = 'RD';
      abbreviationColor = const Color.fromRGBO(106, 56, 5, 1);
      fontSize = 30;
    }

    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$rang $abbreviation - ${user.name} - ${user.pts} pts',
            style: TextStyle(
              fontSize: fontSize,
              color: abbreviationColor,
            ),
          ),
        ],
      ),
    );
  }
}
