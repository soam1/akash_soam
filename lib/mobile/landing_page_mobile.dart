import 'package:akash_soam/components.dart';
import 'package:flutter/material.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    // var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: DrawerMobile(),
      body: ListView(
        children: [
          //FIRST SECTION
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 113.0,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/mypic_circular.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold(15.0, "Hello I'm"),
                    ),
                    SansBold(40.0, "Akash Soam"),
                    Sans(20.0, "Application Developer"),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        Icon(
                          Icons.call,
                        ),
                        Icon(
                          Icons.location_pin,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans(15.0, "soamakash77@gmail.com"),
                        Sans(15.0, "+91 8709575112"),
                        Sans(15.0, "Hamirpur, Himachal Pradesh"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150.0,
          ),

          //ABOUT ME(SECOND SECTION)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold(35.0, "About Me"),
                Sans(15.0,
                    "Hello I'm Akash Soam I specialize in Application development"),
                Sans(15.0, " be it Cross-platform or android-native"),
                Sans(15.0,
                    "I strive to ensure astounding performance with state of "),
                Sans(15.0, "the art security for Android, ios, web, windows"),
                SizedBox(
                  height: 10.0,
                ),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    tealContainerForProgSkills("Flutter"),
                    tealContainerForProgSkills("Dart"),
                    tealContainerForProgSkills("Kotlin"),
                    tealContainerForProgSkills("Java"),
                    tealContainerForProgSkills("Android"),
                    tealContainerForProgSkills("Firebase"),
                    tealContainerForProgSkills("Web"),
                    tealContainerForProgSkills("html"),
                    tealContainerForProgSkills("css"),
                    tealContainerForProgSkills("c/c++"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold(35.0, "What I do?"),
              AnimatedCardMobile(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300.0,
              ),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCardMobile(
                imagePath: "assets/app.png",
                text: "Android Development",
                width: 300.0,
              ),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCardMobile(
                imagePath: "assets/firebase.png",
                text: "Backend Development",
                width: 300.0,
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
          ),
          //  CONTACT SECTION
          ContactFormMobile(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
