import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/home_screen.dart';

import '../widgets/item_card.dart';
import '../widgets/wallpaper.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:gradient_icon/gradient_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> wallpapers(){
    return [
      const WallpaperCard(image: "img6.jfif"),
      const WallpaperCard(image: "img7.jfif"),
      const WallpaperCard(image: "img8.jfif"),
      const WallpaperCard(image: "img9.jfif"),
      const WallpaperCard(image: "img10.jfif"),
      const WallpaperCard(image: "img11.jfif"),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/img1.jfif",
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                      width: 380,
                      height: 180,
                    ),
                  ),
                  const Text(" COAL\nBLACK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "Stretch",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff989898),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE3E3E3),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE3E3E3),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category",
                    style: TextStyle(
                      color: Color(0xff29323B),
                      fontSize: 20,
                    ),),
                  Text("View All",
                    style: TextStyle(
                      color: Color(0xff0071E3),
                      fontSize: 16,
                    ),)
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemCard(imageMain: "img2.jfif", labelMain: "Abstract", widthsMain: 80, heightMain: 60,),
                ItemCard(imageMain: "Gaming.png", labelMain: "Gaming", widthsMain: 80, heightMain: 60,),
                ItemCard(imageMain: "Music.jfif", labelMain: "Music", widthsMain: 80, heightMain: 60,),
                ItemCard(imageMain: "img5.jfif", labelMain: "Girl", widthsMain: 80, heightMain: 60,),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffE1F4FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    width: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xff6747E7),
                            Color(0xff00FFF0),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                    ),
                    child: const Column(
                      children: [
                        Icon(Icons.local_fire_department, color: Colors.white, size: 25,),
                        Text("Trending",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),)
                      ],
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GradientIcon(
                        icon: Icons.access_time_filled,
                        gradient: LinearGradient(
                            colors: [
                              Color(0xff6747E7),
                              Color(0xff00FFF0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            tileMode: TileMode.mirror
                        ),
                        size: 22,
                      ),
                      Text("Recent",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6747E7)
                        ),)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          LucideIcons.feather,
                          color: Color(0xff6747E7),
                          size: 22,
                        ),
                        Text("New",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff6747E7)
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: wallpapers(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
