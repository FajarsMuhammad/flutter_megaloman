// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow textOverflow;

  BigText({
    Key? key,
    required this.text,
    this.color,
    this.size = 20,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        overflow: textOverflow,
        fontSize: size,
      ),
    );
  }
}
