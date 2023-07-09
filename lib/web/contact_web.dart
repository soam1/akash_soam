import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                  "assets/contact_image.jpg",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              SansBold(40.0, "Contact me"),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      MyTextFormField("First Name", "John", 1, 200),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFormField("Last Name", "Wick", 1, 200),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextFormField("Email", "wickjohn00@gmail.com", 1, 300),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Column(
                    children: [
                      MyTextFormField("Phone Number", "9876543210", 1, 250),
                      MyTextFormField("Your Message", "I want to..", 10, 500),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
              SizedBox(
                height: 15.0,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: SansBold(20.0, "Submit"),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
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
