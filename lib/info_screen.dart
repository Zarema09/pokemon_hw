import 'package:flutter/material.dart';
import 'model.dart';

class InfoScreen extends StatelessWidget {
  final PokemonData pokemonData;

  const InfoScreen({super.key, required this.pokemonData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokemonData.color,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  pokemonData.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  pokemonData.number,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: pokemonData.color.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            pokemonData.type,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 16),
                        //  "About"
                        Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('${pokemonData.weight} kg'),
                                Text('Weight', style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('${pokemonData.height} m'),
                                Text('Height', style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            Column(
                              children: [
                                Text(pokemonData.moves.join(', ')),
                                Text('Moves', style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          pokemonData.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(height: 16),
                        // Base Stats
                        Text('Base Stats', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Column(
                          children: pokemonData.baseStats.entries.map((entry) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  SizedBox(width: 50, child: Text(entry.key)),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      value: entry.value / 100,
                                      backgroundColor: Colors.grey[300],
                                      color: pokemonData.color,
                                    ),
                                  ),
                                  SizedBox(width: 30, child: Text(entry.value.toString())),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    pokemonData.image,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}