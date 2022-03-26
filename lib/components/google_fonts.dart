import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMonserratBold extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColour;
  final TextOverflow? overflow;
  const TextMonserratBold({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColour = Colors.white,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: textColour,
      ),
    );
  }
}

class TextMonserratNormal extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColour;
  final TextOverflow? overflow;
  const TextMonserratNormal({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColour = Colors.white,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.normal,
        fontSize: fontSize,
        color: textColour,
      ),
    );
  }
}
