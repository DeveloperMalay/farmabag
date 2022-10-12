import 'package:flutter/material.dart';
import 'package:pharmabag/const/const.dart';
import 'package:pharmabag/utils/custom_theme.dart';

class OverViewCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final String value;
  final double width;

  const OverViewCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.color,
      required this.value,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        shadowColor: const Color(0xFFA7BAFF).withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: color.withOpacity(0.2),
                radius: 22,
                child: Icon(icon, color: color, size: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomTheme.violet),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Tap to view",
                style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                    color: greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
