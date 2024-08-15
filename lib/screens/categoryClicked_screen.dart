import 'package:flutter/material.dart';

class CategoryClicked extends StatefulWidget {
  final String title;
  final String images;
  const CategoryClicked({super.key, required this.title, required this.images});

  @override
  State<CategoryClicked> createState() => _CategoryClickedState(text: title, image: images);
}

class _CategoryClickedState extends State<CategoryClicked> {

  final String text;
  final String image;

  _CategoryClickedState({required this.text, required this.image});

  List<Widget> images () {
    return [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(child: Image.asset("assets/images/$image", fit: BoxFit.cover,)),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/img3.jfif", fit: BoxFit.cover,),
      ),
ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(child: Image.asset("assets/images/$image", fit: BoxFit.cover,)),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/img3.jfif", fit: BoxFit.cover,),
      ),
ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(child: Image.asset("assets/images/$image", fit: BoxFit.cover,)),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/img3.jfif", fit: BoxFit.cover,),
      ),
ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(child: Image.asset("assets/images/$image", fit: BoxFit.cover,)),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/img3.jfif", fit: BoxFit.cover,),
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },child: const Icon(Icons.arrow_back, color: Colors.black,)),
        title: Text(text),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
            crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: images(),),
      ),
    );
  }
}
