import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                color: Colors.transparent,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0, -5),
                  ),
                ],
                fontSize: 25.0,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(
          widget.title,
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;

  const SansBold(this.size, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans(this.size, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.normal),
    );
  }
}

class Skill extends StatelessWidget {
  final nameOfSkill;
  final size;

  const Skill(this.size, this.nameOfSkill, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sans(size, nameOfSkill),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, width: 2, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(7.0),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final labelText;
  final hintText;
  final noOfMaxLines;
  final width;

  const MyTextFormField(
      this.labelText, this.hintText, this.noOfMaxLines, this.width,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(16.0, labelText),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            child: TextFormField(
              maxLines: noOfMaxLines,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.tealAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
            ),
            width: this.width),
      ],
    );
  }
}
