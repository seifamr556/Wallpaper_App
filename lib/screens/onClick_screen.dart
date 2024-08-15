import 'package:flutter/material.dart';

class OnClickScreen extends StatefulWidget {
  final String imagePath;
  const OnClickScreen({super.key, required this.imagePath});

  @override
  State<OnClickScreen> createState() => _OnClickScreenState(image: imagePath);
}

class _OnClickScreenState extends State<OnClickScreen> {

  final String image;

  _OnClickScreenState({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      appBar: AppBar(
        backgroundColor: const Color(0xff171717),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/images/$image", width: 250, height: 450, fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff191E31)
                    ),
                    child: const Text("Download")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
