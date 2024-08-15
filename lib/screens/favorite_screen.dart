import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
          child: Text("No favorite found",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffB6B6B6)
          ),),
        )
    );
  }
}
