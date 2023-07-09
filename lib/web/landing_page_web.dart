import 'package:akash_soam/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
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

  var logger = Logger();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                // Image.asset(
                //   "assets/instagram.png",
                //   width: 35.0,
                //   filterQuality: FilterQuality.high,
                // ),

                // IconButton(
                //   icon: SvgPicture.asset(
                //     "assets/instagram2.svg",
                //     color: Colors.black,
                //     width: 35,
                //   ),
                //   onPressed: () async {
                //     await launchUrl(
                //         Uri.parse("https://instagram.com/narendramodi"));
                //   },
                // ),
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 4,
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
                  height: widthDevice / 1.9,
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
                    Sans(15, "the art security for Android, ios, web, windows"),
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
                    AnimatedCardWeb(
                        imagePath: "assets/webL.png", text: "Web development"),
                    AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                        imagePath: "assets/firebase.png",
                        text: "Backend development"),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
          //  FOURTH SECTION(contact me)
          Container(
            height: heightDevice,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SansBold(40, "Contact me"),
                  Row(
                    children: [
                      Column(
                        children: [
                          MyTextFormField(
                            "First Name",
                            "John",
                            1,
                            200,
                            controller: _firstNameController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "First name is required";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyTextFormField(
                            "Last Name",
                            "Wick",
                            1,
                            200,
                            controller: _lastNameController,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyTextFormField(
                            "Email",
                            "wickjohn00@gmail.com",
                            1,
                            300,
                            controller: _emailController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "Email is required";
                              }
                            },
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      Column(
                        children: [
                          MyTextFormField(
                            "Phone Number",
                            "9876543210",
                            1,
                            250,
                            controller: _phoneController,
                            // validator: (text) {
                            //   if (text.toString().isEmpty) {
                            //     return "Phone no is required";
                            //   }
                            // },
                          ),
                          MyTextFormField(
                            "Your Message",
                            "I want to..",
                            10,
                            500,
                            controller: _messageController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "Message is required";
                              }
                            },
                          ),
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
                    onPressed: () async {
                      logger.d(_firstNameController.text);
                      final addData = new AddDataToFirestore();
                      if (formKey.currentState!.validate()) {
                        await addData.addResponse(
                            _firstNameController.text,
                            _lastNameController.text,
                            _emailController.text,
                            _phoneController.text,
                            _messageController.text);
                        formKey.currentState!.reset();
                        DialogError(context);
                      }
                    },
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
