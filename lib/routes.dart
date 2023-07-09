import 'package:akash_soam/mobile/contact_mobile.dart';
import 'package:akash_soam/mobile/landing_page_mobile.dart';
import 'package:akash_soam/web/contact_web.dart';
import 'package:akash_soam/web/landing_page_web.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return ContactWeb();
              } else
                return ContactMobile();
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
    }
  }
}
