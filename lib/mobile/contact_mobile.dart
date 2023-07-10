import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
      endDrawer: DrawerMobile(),
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
          child: Form(
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
        ),
      ),
    );
  }
}
