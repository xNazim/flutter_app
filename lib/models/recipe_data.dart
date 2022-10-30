final List<RecipeData> data = [
  RecipeData('assets/mangomisu.jpg', "Mangomisu", '1'),
  RecipeData('assets/persian-pavlova.jpg', "Persian-Pavlova", '2'),
  RecipeData('assets/pudding.jpg', "Pudding", '3'),
  RecipeData('assets/Tiramisu.jpg', "Tiramisu", '4'),
  RecipeData('assets/tonic_tort.jpg', "Tonic-Tart", '5'),

];

class RecipeData {
  String imgUl;
  String name;
  String ingredients;
  RecipeData(this.imgUl, this.name, this.ingredients);
}