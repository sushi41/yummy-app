class Recipe {
  String name;
  String description;
  String image;
  List<String> ingredients;
  List<String> instructions;

  Recipe(
      {required this.name,
      required this.description,
      required this.image,
      required this.ingredients,
      required this.instructions});
}
