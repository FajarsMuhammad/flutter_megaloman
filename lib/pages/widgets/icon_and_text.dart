// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_megaloman/pages/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color color;

  const IconText({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        // ignore: prefer_const_constructors
        SizedBox(width: 2),
        SmallText(text: text),
      ],
    );
  }
}
