import 'dart:ui';
import 'package:flutter/material.dart';

import 'model.dart';

final butterfreeColor = Color(0xFFA7B723);

final urls = [
  'https://i.pinimg.com/736x/72/1a/79/721a792cd5a33f8cd6b5b81160b06ba0.jpg',
  'https://img1.picmix.com/output/stamp/normal/4/2/7/0/1670724_c8859.png',
  'https://www.pngplay.com/wp-content/uploads/12/Squirtle-Pokemon-Transparent-File-Clip-Art.png',
  'https://www.clipartmax.com/png/middle/279-2790204_pokemon-clipart-butterfree-pokemon-butterfree.png',
];
final colors = [Colors.green, Colors.orange, Colors.blueAccent, butterfreeColor];

final data = [
  PokemonData(name: 'Bulba', image: urls[0], color: colors[0]),
  PokemonData(name: 'Charma', image: urls[1], color: colors[1]),
  PokemonData(name: 'Squirtle', image: urls[2], color: colors[2]),
  PokemonData(name: 'Butterfree', image: urls[3], color: colors[3]),
];


