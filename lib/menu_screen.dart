import 'package:flutter/material.dart';
import 'package:pokemon_04/info_screen.dart';
import 'package:pokemon_04/item_pokemon_widget.dart';

import 'data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.catching_pokemon,
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      'Pokedex',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_downward,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.black, width: 2.5),
                  ),
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (_, index) {
                    final pokemon = data[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => InfoScreen(
                              pokemonData: pokemon,
                            ),
                          ),
                        );
                      },
                      child: ItemPokemonWidget(
                        pokemonData: pokemon,
                      ),
                    );
                  },
                  itemCount: data.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
