import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/categoryClicked_screen.dart';

class ItemCard extends StatefulWidget {
  final String imageMain;
  final String labelMain;
  final double widthsMain;
  final double heightMain;

  const ItemCard({super.key, required this.imageMain, required this.labelMain, required this.widthsMain, required this.heightMain});

  @override
  State<ItemCard> createState() => _ItemCardState(image: imageMain, label: labelMain, widths: widthsMain, height: heightMain);
}

class _ItemCardState extends State<ItemCard> {

  String image;
  String label;
  double widths;
  double height;



 _ItemCardState({required  this.image, required this.label, required this.widths, required this.height});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryClicked(title: label, images: image,)));
        });
      },
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/$image",
                fit: BoxFit.cover,
                width: widths,
                height: height,
              ),
            ),
            Text(label, style: const TextStyle(
              color: Colors.white,
            ),)
          ],
        ),
      ),
    );
  }
}