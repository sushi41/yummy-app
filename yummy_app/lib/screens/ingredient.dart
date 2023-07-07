import 'package:flutter/material.dart';
import 'package:yummy_app/screens/recipe_page.dart';
import '../models/recipe_model.dart';

class Ingredients extends StatelessWidget {
  final Recipe recipe;
  const Ingredients({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${recipe.name} Ingredients",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: recipe.ingredients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recipe.ingredients[index]),
                );
              },
            )),
            Container(
              height: 58,
              width: 260,
              padding: const EdgeInsets.only(bottom: 18),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return RecipePage(recipe: recipe);
                      },
                    ));
                  },
                  child: const Text("procede for recipe")),
            )
          ],
        ),
      ),
    );
  }
}
