import 'dart:ui';

class PokemonData {
  final String name;
  final String image;
  final Color color;
  final String number;
  final String type;
  final double weight;
  final double height;
  final List<String> moves;
  final String description;
  final Map<String, int> baseStats;

  PokemonData({
    required this.name,
    required this.image,
    required this.color,
    required this.number,
    required this.type,
    required this.weight,
    required this.height,
    required this.moves,
    required this.description,
    required this.baseStats,
  });
}