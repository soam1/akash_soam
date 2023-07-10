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
      drawer: DrawerWeb(),
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
              title: TabsWebList(),
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
                    // SizedBox(
                    //   height: 300.0,
                    //   width: 300.0,
                    //   child: AnimatedCardWeb(
                    //     imagePath: "assets/portfolio.png",
                    //     text: "",
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    AnimatedCardWeb(
                      imagePath: "assets/portfolio.png",
                      text: "",
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: widthDevice / 3.0,
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

  // urlLauncher(String imagePath, String url) {
  //   return IconButton(
  //     icon: SvgPicture.asset(
  //       imagePath,
  //       // color: Colors.black,
  //       width: 35,
  //       height: 35,
  //     ),
  //     onPressed: () async {
  //       await launchUrl(Uri.parse(url));
  //     },
  //   );
  // }
}
