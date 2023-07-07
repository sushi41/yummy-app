import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:yummy_app/models/recipe_model.dart';

class RecipeService {
  static Future<List<Recipe>> loadRecipes() async {
    String jsonData = await rootBundle.loadString('recipes.json');

    List<dynamic> jsonList = json.decode(jsonData);

    List<Recipe> recipes = jsonList.map((json) {
      return Recipe(
        name: json['name'],
        description: json['description'],
        image: json['image'],
        ingredients: List<String>.from(json['ingredients']),
        instructions: List<String>.from(json['instructions']),
      );
    }).toList();
    return recipes;
  }
}
