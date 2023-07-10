import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              expandedHeight: 500.0,
              title: TabsWebList(),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
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
