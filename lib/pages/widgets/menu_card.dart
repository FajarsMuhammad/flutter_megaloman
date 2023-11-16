import 'package:flutter/material.dart';
import 'package:flutter_megaloman/common/constant/colors.dart';

class MenuCard extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const MenuCard({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: ColorName.white,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                ],
              ),
              const Spacer(),
              Container(
                width: 91,
                height: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(94.25),
                  color: ColorName.white.withOpacity(0.2),
                ),
              ),
              const SizedBox(width: 8.0),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 40.0),
        //   child: Align(
        //     alignment: Alignment.bottomRight,
        //     child: Image.asset(
        //       imagePath,
        //       height: 90.0,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
