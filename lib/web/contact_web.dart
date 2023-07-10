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
    // var widthDevice = MediaQuery.of(context).size.width;
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
          child: ContactFormWeb(),
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
