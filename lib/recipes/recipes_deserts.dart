import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  String imgUrl;
  String name;
  String ingredients;

  Recipe({Key? key, required this.imgUrl, required this.name, required this.ingredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          title: const Text("Recipe"),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //strMeal strCategory strInstructions strMealThumb strIngredient(n)
              AspectRatio(
                aspectRatio: 2 / 1,
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "${name}",
                style: TextStyle(color: Colors.grey[900], fontSize: 24.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Ingredients: ",
                style: TextStyle(color: Colors.grey[900], fontSize: 23.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Instructions: ",
                style: TextStyle(color: Colors.grey[900], fontSize: 23.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                ingredients,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 17,
                    letterSpacing: .5,
                    wordSpacing: 1,
                    height: 1.5),
              )
            ],
          ),
        ));
  }
}
