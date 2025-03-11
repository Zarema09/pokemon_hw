import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class InfoScreen extends StatelessWidget {
  final PokemonData pokemonData;

  const InfoScreen({super.key, required this.pokemonData});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pokemonData.color,
    );
  }
}
