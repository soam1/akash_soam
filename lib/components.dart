import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final route;

  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
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
              : GoogleFonts.oswald(color: Colors.black, fontSize: 20.0),
          child: Text(
            widget.title,
          ),
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
              // inputFormatters: [
              //   FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
              //   LengthLimitingTextInputFormatter(10),
              // ],
              maxLines: noOfMaxLines,
              decoration: InputDecoration(
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
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
              // validator: (text) {
              //   if (RegExp("\\bakash\\b", caseSensitive: false)
              //       .hasMatch(text.toString())) {
              //     return "Match found";
              //   }
              // },
              // autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            width: this.width),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;

  const AnimatedCardWeb(
      {super.key,
      @required this.imagePath,
      @required this.text,
      this.fit,
      this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(
      seconds: 4,
    ),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
          begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
          end: widget.reverse == true ? Offset.zero : Offset(0, 0.08))
      .animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit != null ? widget.fit : null,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(15, widget.text),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({super.key, this.text, this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black,
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 20.0,
      minWidth: 200.0,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      elevation: 20.0,
    );
  }
}

class AnimatedCardMobile extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  const AnimatedCardMobile(
      {super.key,
      @required this.imagePath,
      @required this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  State<AnimatedCardMobile> createState() => _AnimatedCardMobileState();
}

class _AnimatedCardMobileState extends State<AnimatedCardMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(
      seconds: 4,
    ),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
          begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
          end: widget.reverse == true ? Offset.zero : Offset(0, 0.08))
      .animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit != null ? widget.fit : null,
              ),
              SizedBox(
                height: 10.0,
              ),
              SansBold(15.0, widget.text),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
      ),
    );
  }
}
