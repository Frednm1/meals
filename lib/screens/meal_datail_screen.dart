import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import '../models/meal.dart';

class MealDatailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ingredientes',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              height: 200,
              width: 300,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Card(
                        child: Text(meal.ingredients[index]),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
