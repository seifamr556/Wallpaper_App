import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  Widget _settingButton(IconData icon, String text){
    return Column(
      children: [
        Container(
          height: 1,
          width: 320,
          margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: const Color(0xffC5C5C5),
            borderRadius: BorderRadius.circular(2)
          ),
          child: const Text(""),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: Colors.white,),
                ),
                Text(text ,
                style: const TextStyle(
                  color: Color(0xff222222),
                  fontSize: 14,
                ),)
              ],
            ),
            Container(
                margin: const EdgeInsets.only(right: 30),
                child: const Icon(Icons.arrow_forward_ios_sharp, size: 15, color: Color(0xffC5C5C5),))
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        blurStyle: BlurStyle.outer,
                        offset: Offset.zero
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.notifications_none_outlined, color: Colors.white,),
                              ),
                              const Text("Push notifications" ,
                                style: TextStyle(
                                  color: Color(0xff222222),
                                  fontSize: 14,
                                ),)
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: Switch(
                                  value: true,
                                  onChanged: (value) {},
                                activeTrackColor: Colors.black,
                              )
                          ),
                        ],
                      ),
                      _settingButton(LucideIcons.send, "Invite a friend"),
                      _settingButton(LucideIcons.star, "Rate this app"),
                      _settingButton(LucideIcons.messageSquareText, "Feedback & bugs"),
                      _settingButton(LucideIcons.stickyNote, "Terms & Conditions"),
                      _settingButton(Icons.local_police_outlined, "Privacy Policy"),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Instagram.png", width: 50, height: 50,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/facebook.png", width: 50, height: 50,)),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/twitter.png", width: 52, height: 50,)),
                    ],
                  ),
                ),
                const Text("Like & Follow us on",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff191E31)
                ),)
              ],
            ),
          ),
        )
    );
  }
}
