import 'package:akash_soam/components.dart';
import 'package:flutter/material.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 4,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //FIRST SECTION(hOME)
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      child: SansBold(15, "Hello I'm"),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold(55, "Akash Soam"),
                    Sans(30, "Flutter developer"),
                    Sans(30, "Android developer"),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(15.0, "soamakash77@gmail.com"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(15.0, "+91 8709575112"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(15.0, "Hamirpur, Himachal Pradesh, India"),
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/mypic_circular.png"),
                      radius: 140,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SECOND SECTION(about me)
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/web.jpg",
                  height: heightDevice / 1.7,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(40, "About Me"),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(15,
                        "Hello I'm Akash Soam, I specialize in Application development(cross platform and native)"),
                    Sans(15,
                        "I strive to ensure astounding performance with state of "),
                    Sans(15,
                        "the art security for for Android, ios, web, windows"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Skill(15, "Flutter"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Dart"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Java"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Kotlin"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Html"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "css"),
                        SizedBox(
                          width: 7,
                        ),
                        // Skill(15, "CPP"),
                        // SizedBox(
                        //   width: 7,
                        // ),
                        // Skill(15, "C"),
                        // SizedBox(
                        //   width: 7,
                        // ),
                        // Skill(15, "git"),
                        // SizedBox(
                        //   width: 7,
                        // ),
                        Skill(15, "Firebase"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Android"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "ios"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Android"),
                        SizedBox(
                          width: 7,
                        ),
                        Skill(15, "Android"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //THIRD SECTION(work)
          Container(
            height: heightDevice / 1.3,
            child: Column(
              children: [
                SansBold(
                  40,
                  "What I do?",
                ),
                Row(
                  // if we want to add more cards we can change the parent widget here to ListView widget instead of Row widget
                  children: [
                    Card(
                      elevation: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/webL.png",
                              height: 200,
                              width: 200,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SansBold(15, "Web development"),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.tealAccent,
                    ),
                    Card(
                      elevation: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/app.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SansBold(15, "App development"),
                            Sans(10,
                                "You can see my projects from my github account"),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.tealAccent,
                    ),
                    Card(
                      elevation: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/firebase.png",
                              height: 200,
                              width: 200,
                              // fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SansBold(15, "Backend development"),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.tealAccent,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          //  FOURTH SECTION(contact me)
        ],
      ),
    );
  }
}
