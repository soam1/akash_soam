import 'package:flutter/material.dart';
import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              // Intro, first section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/mypic_circular.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
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
                    Sans(15.0,
                        "the art security for Android, ios, web, windows"),
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
                height: 40.0,
              ),

              //cards (second subsection)
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCardMobile(
                    imagePath: "assets/webL.png",
                    text: "Web development",
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      AnimatedCardMobile(
                        imagePath: "assets/app.png",
                        text: "Mobile app development",
                        width: 200.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Sans(15.0,
                          "I'm here to develop the state of art apps to make your presence in the world of applications."),
                      Sans(15.0,
                          "Do you need a high-performance, responsive app with beautiful ui, don't worry I've got you covered."),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCardMobile(
                    imagePath: "assets/firebase.png",
                    text: "Backend development",
                    width: 200.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Sans(15.0,
                      "I'm here to develop high performance, scalable and secure backend generally using SpringBoot."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
