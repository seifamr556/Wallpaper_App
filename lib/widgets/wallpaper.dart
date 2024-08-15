import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/onClick_screen.dart';

class WallpaperCard extends StatefulWidget {

  final String image;

  const WallpaperCard({super.key, required this.image});

  @override
  State<WallpaperCard> createState() => _WallpaperCardState(wallpaper_image: image);
}

class _WallpaperCardState extends State<WallpaperCard> {


  final String wallpaper_image;

  _WallpaperCardState({required this.wallpaper_image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => OnClickScreen(imagePath: wallpaper_image)));
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/images/$wallpaper_image", width: 100, height: 800, fit: BoxFit.fill,),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.favorite_border_outlined, size: 15, color: Colors.white,),
          )
        ],
      ),
    );
  }
}
