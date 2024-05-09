import 'package:flutter/material.dart';

class SearchNav extends StatelessWidget {
  const SearchNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        leading: const Icon(Icons.search),
        trailing: [
          IconButton(
            icon: const Icon(Icons.keyboard_voice),
            onPressed: () {
              print('Use voice command');
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              print('Use image search');
            },
          ),
        ],
      ),
    );
  }
}
