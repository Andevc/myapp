// lista_animales_screen.dart
import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_animal_details.dart';


class ScreenListAnimals extends StatelessWidget {
  final List<Map<String, String>> animales = [
    {
      'nombre': 'Gato',
      'descripcion': 'El gato es un felino domestico.',
      'imagen': 'assets/images/gato.jpg',
      'sonido': 'assets/sounds/gato.mp3',
    },
    {
      'nombre': 'Perro',
      'descripcion': 'El perro es el mejor amigo del hombre.',
      'imagen': 'assets/images/perro.jpg',
      'sonido': 'assets/sounds/perro.mp3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Animales')),
      body: ListView.builder(
        itemCount: animales.length,
        itemBuilder: (context, index) {
          final animal = animales[index];
          return ListTile(
            title: Text(animal['nombre']!),
            trailing: ElevatedButton(
              child: Text('Ver más'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AnimalDetails(
                      nombre: animal['nombre']!,
                      descripcion: animal['descripcion']!,
                      imagen: animal['imagen']!,
                      sound: animal['sonido']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
