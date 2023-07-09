import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/mypic.png"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold(30.0, "Akash Soam"),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram2.svg",
                    "https://instagram.com/narendramodi"),
                urlLauncher("assets/linkedin.svg",
                    "https://www.linkedin.com/in/akash-soam-414771225/"),
                urlLauncher(
                    "assets/github.svg", "https://www.github.com/soam1"),
                // urlLauncher(
                //     "assets/leetcode.svg", "https://www.leetcode.com/soamA"),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/works.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              expandedHeight: 500.0,
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "Home", route: "/"),
                  Spacer(),
                  TabsWeb(title: "Works", route: "/works"),
                  Spacer(),
                  TabsWeb(title: "Blog", route: "/blog"),
                  Spacer(),
                  TabsWeb(title: "About", route: "/about"),
                  Spacer(),
                  TabsWeb(title: "Contact", route: "/contact"),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SansBold(40.0, "Works"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 200.0,
                      width: 300.0,
                      child: AnimatedCardWeb(
                        imagePath: "assets/portfolio.png",
                        text: "",
                      ),
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          SansBold(30.0, "Portfolio"),
                          SizedBox(
                            height: 15.0,
                          ),
                          Sans(
                            15.0,
                            "Deployed on ios, web and android, I used flutter to develop the beautiful and responsive UI and firebase for the backend.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  urlLauncher(String imagePath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imagePath,
        // color: Colors.black,
        width: 35,
        height: 35,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
}
