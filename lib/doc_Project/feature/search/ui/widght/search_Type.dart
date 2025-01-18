import 'package:flutter/material.dart';

class SearchType extends StatelessWidget {
  const SearchType({
    super.key,
    required this.width,
    required this.height,
    required this.fucos,
    required this.text,
    required this.onTap,
  });
  final double width;
  final double height;
  final bool fucos;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: fucos ? Colors.blue : Color(0xffF2F4F7),
            borderRadius: BorderRadius.circular(24)),
        child: Text(
          text,
          style: TextStyle(
              color: fucos ? Colors.white : Color(0xffC2C2C2),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
      ),
    );
  }
}
