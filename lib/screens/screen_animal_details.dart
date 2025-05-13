import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AnimalDetails extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String imagen;
  final String sound;

  AnimalDetails({
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.sound,
  });

  @override
  Widget build(BuildContext context) {
    final AudioPlayer _player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(title: Text(nombre)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imagen),
            SizedBox(height: 10,),
            Text(nombre, style: TextStyle(fontSize: 24)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(descripcion),
            ),
            ElevatedButton(
              onPressed: () {
                _player.play(UrlSource(sound));
              },
              child: Text('Reproducir sonido'),
            ),

          ],
        ),
        
      ),
    );
  }
}
