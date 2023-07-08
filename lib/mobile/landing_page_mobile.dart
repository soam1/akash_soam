import 'package:akash_soam/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainerForProgSkills(
    text,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0),
                  color: Colors.black,
                ),
                child: Image.asset("assets/mypic_circular.png"),
              ),
            ),
            TabsMobile(text: "Home", route: "/"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Works", route: "/works"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Blog", route: "/blog"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "About", route: "/about"),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Contact", route: "/contact"),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse("https://www.instagram.com/narendramodi"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/instagram2.svg",
                    width: 35.0,
                    height: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                          "https://www.linkedin.com/in/akash-soam-414771225/"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/linkedin.svg",
                    width: 35.0,
                    height: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse("https://www.github.com/soam1"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    width: 35.0,
                    height: 35.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Flutter",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Dart",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Java",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Kotlin",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Android",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "Web",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "HTML",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "css",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.tealAccent,
                    //       style: BorderStyle.solid,
                    //       width: 2.0,
                    //     ),
                    //     borderRadius: BorderRadius.circular(5.0),
                    //   ),
                    //   padding: EdgeInsets.all(7.0),
                    //   child: Text(
                    //     "C,C++",
                    //     style: GoogleFonts.openSans(fontSize: 15.0),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
