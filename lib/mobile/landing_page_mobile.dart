import 'package:akash_soam/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
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

  var logger = Logger();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
          //FIRST SECTION
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold(35.0, "What I do?"),
              AnimatedCardMobile(
                imagePath: "assets/webL.png",
                text: "Web Development",
                width: 300.0,
              ),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCardMobile(
                imagePath: "assets/app.png",
                text: "Android Development",
                width: 300.0,
              ),
              SizedBox(
                height: 35.0,
              ),
              AnimatedCardMobile(
                imagePath: "assets/firebase.png",
                text: "Backend Development",
                width: 300.0,
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
          ),
          //  CONTACT SECTION
          Form(
            key: formKey,
            child: Wrap(
              runSpacing: 20.0,
              spacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold(35.0, "Contact Me"),
                MyTextFormField(
                  "First Name",
                  "John",
                  1,
                  widthDevice / 1.2,
                  controller: _firstNameController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "First name is required";
                    }
                  },
                ),
                MyTextFormField(
                  "Last Name",
                  "Wick",
                  1,
                  widthDevice / 1.2,
                  controller: _lastNameController,
                ),
                MyTextFormField(
                  "Phone",
                  "+91 9876543210",
                  1,
                  widthDevice / 1.2,
                  controller: _phoneController,
                ),
                MyTextFormField(
                  "Email",
                  "wickjohn0@gmail.com",
                  1,
                  widthDevice / 1.2,
                  controller: _emailController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "email is required";
                    }
                  },
                ),
                MyTextFormField(
                  "Your Message",
                  "I want to...",
                  8,
                  widthDevice / 1.2,
                  controller: _messageController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Message is required";
                    }
                  },
                ),
                MaterialButton(
                  onPressed: () async {
                    logger.d(_firstNameController.text);
                    final addData = new AddDataToFirestore();
                    if (formKey.currentState!.validate()) {
                      if (await addData.addResponse(
                          _firstNameController.text,
                          _lastNameController.text,
                          _emailController.text,
                          _phoneController.text,
                          _messageController.text)) {
                        formKey.currentState!.reset();
                        DialogError(context, "Message sent successfully");
                      } else {
                        DialogError(context, "Message failed to send");
                      }
                    }
                  },
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: widthDevice / 2.2,
                  color: Colors.tealAccent,
                  child: SansBold(20.0, "Submit"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
