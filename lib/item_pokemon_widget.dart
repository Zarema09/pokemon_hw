import 'package:flutter/material.dart';
import 'model.dart';

class ItemPokemonWidget extends StatelessWidget {
  final PokemonData pokemonData;

  const ItemPokemonWidget({
    super.key,
    required this.pokemonData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 112,
        width: 104,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: pokemonData.color, width: 5, style: BorderStyle.solid),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(right: 8),
              width: double.infinity,
              child: Text(
                '#001',
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.right,
              ),
            ),
            Center(
              child: Image.network(
                pokemonData.image,
                height: 72,
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                height: 18,
                width: double.infinity,
                color: pokemonData.color,
                child: Center(
                  child: Text(
                    pokemonData.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}