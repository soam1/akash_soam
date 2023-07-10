import 'package:flutter/material.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWeb(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          //  ABOUT ME (FIRST SUBSECTION)
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(40.0, "About Me"),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15.0,
                        "Hello I'm Akash Soam I specialize in Mobile Application development"),
                    Sans(15.0,
                        "I strive to ensure astounding performance with state of"),
                    Sans(15.0,
                        "the art security for android, ios, web, windows"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainerForProgSkills("Flutter"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("Dart"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("Android"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("Firebase"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("kotlin"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("java"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("html"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("css"),
                        SizedBox(
                          width: 7.0,
                        ),
                        tealContainerForProgSkills("c/c++"),
                        SizedBox(
                          width: 7.0,
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      child: Image.asset(
                        "assets/mypic_circular.png",
                        filterQuality: FilterQuality.high,
                      ),
                      radius: 140,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //WEB DEV(SECOND SUBSECTION)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: "assets/webL.png",
                text: "Web development",
              ),
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15.0,
                        "I'm here to build your presence online with state of art web apps"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          //app dev(subsection)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15.0, "Want high performance apps with beautiful ui."),
                    Sans(15.0, " MAY I HELP YOU?"),
                  ],
                ),
              ),
              AnimatedCardWeb(
                imagePath: "assets/app.png",
                text: "App development",
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          //backend dev(subsection)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: "assets/firebase.png",
                text: "Backend development",
              ),
              SizedBox(
                width: widthDevice / 3.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(15.0,
                        "I'm here to build your presence online with highly scalable and secure backend"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
