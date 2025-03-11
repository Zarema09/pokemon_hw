import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pokemon_04/model.dart';

final List<String> urls = [
  'https://i.pinimg.com/736x/72/1a/79/721a792cd5a33f8cd6b5b81160b06ba0.jpg', // Bulbasaur
  'https://img1.picmix.com/output/stamp/normal/4/2/7/0/1670724_c8859.png',  // Charmander
  'https://www.pngplay.com/wp-content/uploads/12/Squirtle-Pokemon-Transparent-File-Clip-Art.png', // Squirtle
  'https://www.clipartmax.com/png/middle/279-2790204_pokemon-clipart-butterfree-pokemon-butterfree.png', // Butterfree
  'https://upload.wikimedia.org/wikipedia/commons/5/54/Pikachu.png', // Pikachu
  'https://upload.wikimedia.org/wikipedia/commons/3/3b/Gastly.png', // Gastly
  'https://upload.wikimedia.org/wikipedia/commons/6/6f/Ditto.png', // Ditto
  'https://upload.wikimedia.org/wikipedia/commons/2/22/Mew.png', // Mew
  'https://upload.wikimedia.org/wikipedia/commons/8/87/Aron.png', // Aron
];

final List<Color> colors = [
  Colors.green, // Bulbasaur
  Colors.orange, // Charmander
  Colors.blueAccent, // Squirtle
  Colors.lightGreen, // Butterfree
  Colors.yellow, // Pikachu
  Colors.purple, // Gastly
  Colors.brown, // Ditto
  Colors.pink, // Mew
  Colors.grey, // Aron
];

final List<PokemonData> data = [
  PokemonData(
    name: 'Bulbasaur',
    image: urls[0],
    color: colors[0],
    number: '#001',
    type: 'Grass/Poison',
    weight: 6.9,
    height: 0.7,
    moves: ['Vine Whip', 'Tackle'],
    description: 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.',
    baseStats: {'HP': 45, 'ATK': 49, 'DEF': 49, 'SPATK': 65, 'SPDEF': 65, 'SPD': 45},
  ),
  PokemonData(
    name: 'Charmander',
    image: urls[1],
    color: colors[1],
    number: '#004',
    type: 'Fire',
    weight: 8.5,
    height: 0.6,
    moves: ['Scratch', 'Ember'],
    description: 'The flame on its tail shows the strength of its life force. If it is weak, the flame also burns weakly.',
    baseStats: {'HP': 39, 'ATK': 52, 'DEF': 43, 'SPATK': 60, 'SPDEF': 50, 'SPD': 65},
  ),
  PokemonData(
    name: 'Squirtle',
    image: urls[2],
    color: colors[2],
    number: '#007',
    type: 'Water',
    weight: 9.0,
    height: 0.5,
    moves: ['Water Gun', 'Tackle'],
    description: 'When it retracts its long neck into its shell, it squirts out water with vigorous force.',
    baseStats: {'HP': 44, 'ATK': 48, 'DEF': 65, 'SPATK': 50, 'SPDEF': 64, 'SPD': 43},
  ),
  PokemonData(
    name: 'Butterfree',
    image: urls[3],
    color: colors[3],
    number: '#012',
    type: 'Bug/Flying',
    weight: 32.0,
    height: 1.1,
    moves: ['Gust', 'Stun Spore'],
    description: 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.',
    baseStats: {'HP': 60, 'ATK': 45, 'DEF': 50, 'SPATK': 90, 'SPDEF': 80, 'SPD': 70},
  ),
  PokemonData(
    name: 'Pikachu',
    image: urls[4],
    color: colors[4],
    number: '#025',
    type: 'Electric',
    weight: 6.0,
    height: 0.4,
    moves: ['Thunder Shock', 'Quick Attack'],
    description: 'It keeps its tail raised to monitor its surroundings. If you yank its tail, it will try to bite you.',
    baseStats: {'HP': 35, 'ATK': 55, 'DEF': 40, 'SPATK': 50, 'SPDEF': 50, 'SPD': 90},
  ),
  PokemonData(
    name: 'Gastly',
    image: urls[5],
    color: colors[5],
    number: '#092',
    type: 'Ghost/Poison',
    weight: 0.1,
    height: 1.3,
    moves: ['Lick', 'Night Shade'],
    description: 'Its body is made of gas. Despite lacking substance, it can envelop an opponent of any size and cause suffocation.',
    baseStats: {'HP': 30, 'ATK': 35, 'DEF': 30, 'SPATK': 100, 'SPDEF': 35, 'SPD': 80},
  ),
  PokemonData(
    name: 'Ditto',
    image: urls[6],
    color: colors[6],
    number: '#132',
    type: 'Normal',
    weight: 4.0,
    height: 0.3,
    moves: ['Transform'],
    description: 'Capable of copying an enemy’s genetic code to instantly transform itself into a duplicate of the enemy.',
    baseStats: {'HP': 48, 'ATK': 48, 'DEF': 48, 'SPATK': 48, 'SPDEF': 48, 'SPD': 48},
  ),
  PokemonData(
    name: 'Mew',
    image: urls[7],
    color: colors[7],
    number: '#152',
    type: 'Psychic',
    weight: 4.0,
    height: 0.4,
    moves: ['Psywave', 'Mega Punch'],
    description: 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.',
    baseStats: {'HP': 100, 'ATK': 100, 'DEF': 100, 'SPATK': 100, 'SPDEF': 100, 'SPD': 100},
  ),
  PokemonData(
    name: 'Aron',
    image: urls[8],
    color: colors[8],
    number: '#304',
    type: 'Steel/Rock',
    weight: 60.0,
    height: 0.4,
    moves: ['Tackle', 'Metal Claw'],
    description: 'It eats iron to build its steel body. It is often seen around construction sites and junkyards.',
    baseStats: {'HP': 50, 'ATK': 70, 'DEF': 100, 'SPATK': 40, 'SPDEF': 40, 'SPD': 30},
  ),
];