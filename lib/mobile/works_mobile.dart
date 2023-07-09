import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/works.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 400.0,
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold(35.0, "Works"),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 150.0,
                    width: 300.0,
                    child: AnimatedCardWeb(
                      imagePath: "assets/portfolio.png",
                      text: "",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  SansBold(20.0, "Portfolio"),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(15.0,
                        "Deployed on ios, web and android, I used flutter to develop the beautiful and responsive UI and firebase for the backend."),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
