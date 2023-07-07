import 'package:flutter/material.dart';
import '../models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  final Recipe recipe;
  const RecipePage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${recipe.name} recipe"),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
          child: ListView.builder(
            itemCount: recipe.instructions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(recipe.instructions[index]),
              );
            },
          )),
    );
  }
}
