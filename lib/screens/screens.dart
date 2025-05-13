import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_list_animals.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});
  
  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ScreenListAnimals()),
                );
              },
              child: Text('Ir a la lista de animales'),
            ),
          ],
        ),
      ),
    );
  }
}
