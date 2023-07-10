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
        endDrawer: DrawerMobile(),
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
                  // SizedBox(
                  //   height: 150.0,
                  //   width: 300.0,
                  //   child: AnimatedCardMobile(
                  //     imagePath: "assets/portfolio.png",
                  //     text: "",
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  AnimatedCardMobile(
                    imagePath: "assets/portfolio.png",
                    text: "",
                    fit: BoxFit.contain,
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
