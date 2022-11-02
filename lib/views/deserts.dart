import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/views/recipes_deserts.dart';

import '../models/recipe_data.dart';

class Deserts extends StatefulWidget {
  const Deserts({Key? key}) : super(key: key);

  @override
  State<Deserts> createState() => _DesertsState();
}

class _DesertsState extends State<Deserts> {
  // List data = [];
  // List<String> images = [
  //   'assets/mangomisu.jpg',
  //   'assets/persian-pavlova.jpg',
  //   'assets/pudding.jpg',
  //   'assets/Tiramisu.jpg',
  //   'assets/tonic_tort.jpg',
  // ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deserts'),
      ),
      backgroundColor: Color(0xffF68989),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recipe(
                            imgUrl: data[index].imgUl,
                            name: data[index].name,
                            ingredients: data[index].ingredients,
                          )
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //strMeal strCategory strInstructions strMealThumb strIngredient(n)
                            AspectRatio(
                              aspectRatio: 2 / 1.5,
                              child: Image.asset(
                                "${data[index].imgUl}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              data[index].name,
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 17.0,
                                  letterSpacing: 1.0),
                            ),
                            Text(
                              data[index].ingredients,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 15.0,
                                  letterSpacing: 0.5),
                            )
                          ]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}