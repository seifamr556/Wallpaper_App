
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/category_screen.dart';
import 'package:wallpaper_app/screens/favorite_screen.dart';
import 'package:wallpaper_app/screens/main_screen.dart';
import 'package:wallpaper_app/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> screens = [
    const MainScreen(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];


  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {

    List<AppBar> appBars = [
      AppBar(
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(98),
            color: const Color(0xffF0F0F0),

          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Find Wallpaper..",
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xffB6B6B6)
              ),
            ),
          ),
        ),
        actions: const [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CircleAvatar(backgroundColor: Colors.red, radius: 3,),
              Icon(Icons.notifications, size: 28,),
            ],
          ),
          SizedBox(width: 15,)
        ],
      ),
      AppBar(
        leading: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: const Icon(Icons.arrow_back, color: Colors.black,)),
        title: const Text("Category"),
        centerTitle: true,
      ),
      AppBar(
        leading: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },child: const Icon(Icons.arrow_back, color: Colors.black,)),
        title: const Text("Favorites"),
        centerTitle: true,
      ),
      AppBar(
        leading: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },child: const Icon(Icons.arrow_back, color: Colors.black,)),
        title: const Text("Settings"),
        centerTitle: true,
      ),
    ];


    return Scaffold(
      appBar: appBars[selectedIndex],
      body: screens[selectedIndex],
      bottomNavigationBar: BottomBar(
        padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
        itemPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        selectedIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        }, items: const [
          BottomBarItem(icon: Icon(Icons.home), activeColor: Color(0xff292D32), title: Text("Home")),
          BottomBarItem(icon: Icon(Icons.auto_awesome_mosaic_rounded), activeColor: Color(0xff292D32), title: Text("Category")),
          BottomBarItem(icon: Icon(Icons.favorite), activeColor: Color(0xff292D32), title: Text("Favorite")),
          BottomBarItem(icon: Icon(Icons.settings), activeColor: Color(0xff292D32), title: Text("Settings")),
      ],
      ),
    );
  }
}
