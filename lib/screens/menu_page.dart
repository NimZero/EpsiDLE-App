import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key});

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
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/logo_epsidle.png',
                height: 250,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FractionallySizedBox(
                  widthFactor: 0.6,
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/classic');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 142, 190, 84),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/point_interrogation.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Classic',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FractionallySizedBox(
                  widthFactor: 0.6,
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/anecdote');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 228, 128, 62),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logo_citation.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Anecdote',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FractionallySizedBox(
                  widthFactor: 0.6,
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/image');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 54, 182, 212),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/logo_image.png',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Image',
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/classement');
                },
                icon: Image.asset(
                  'assets/images/logo_classement.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
