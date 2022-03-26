import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color, textColor;
  final double? borderRadius;
  final double? elevation;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  const RoundedButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.width,
      this.elevation = 0,
      this.color = const Color(0xFFF58941),
      this.textColor = Colors.black,
      this.borderRadius = 29})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? size.width * 0.8,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius!),
          child:
              Stack(alignment: AlignmentDirectional.center, children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(color: color),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: fontSize, fontWeight: fontWeight),
            ),
          ]),
        ),
      ),
    );
  }
}
