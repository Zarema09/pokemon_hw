import 'package:flutter/material.dart';
import 'model.dart';

class DetailsScreen extends StatelessWidget {
  final Model character;

  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.fullName),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(character.image, height: 200),
            SizedBox(height: 20),
            Text(
              character.fullName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Дом: ${character.hogwartsHouse}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}