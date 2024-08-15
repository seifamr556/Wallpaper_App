import 'package:flutter/material.dart';
import 'package:wallpaper_app/widgets/item_card.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  List<Widget> items = [
    const ItemCard(imageMain: "img2.jfif", labelMain: "Abstract", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "art.jfif", labelMain: "Art", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "beach.jfif", labelMain: "Beach", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Bicycle.jfif", labelMain: "Bicycle", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Bike.jfif", labelMain: "Bike", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Car.jfif", labelMain: "Car", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Food.jfif", labelMain: "Food", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Gaming.png", labelMain: "Gaming", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Girl.jfif", labelMain: "Girl", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Music.jfif", labelMain: "Music", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Nature.jfif", labelMain: "Nature", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Plane.jfif", labelMain: "Plane", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Plant.jfif", labelMain: "Plant", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Rain.jfif", labelMain: "Rain", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Space.jfif", labelMain: "Space", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Statues.jfif", labelMain: "Statues", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "Travel.jfif", labelMain: "Travel", widthsMain: 110, heightMain: 80,),
    const ItemCard(imageMain: "WildLife.jfif", labelMain: "Wildlife", widthsMain: 110, heightMain: 80,),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(

          crossAxisCount: 3,
          children: items,
        ),
      ),
    );
  }
}
