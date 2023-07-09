import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 400.0,
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold(35.0, "Contact Me"),
              MyTextFormField("First Name", "Jack", 1, widthDevice / 1.5),
              MyTextFormField("Last Name", "Sparrow", 1, widthDevice / 1.5),
              MyTextFormField(
                  "Phone number", "+91 9876543210", 1, widthDevice / 1.5),
              MyTextFormField(
                  "Email", "sparrowjack123@gmail.com", 1, widthDevice / 1.2),
              MyTextFormField(
                  "Your message", "I am here to..", 8, widthDevice / 1.2),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
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
}
