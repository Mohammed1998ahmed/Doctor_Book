import 'package:flutter/material.dart';

// ignore: camel_case_types
class Section_Text extends StatelessWidget {
  const Section_Text({
    super.key,
    // ignore: non_constant_identifier_names
    required this.Text_Title,
  });
  // ignore: non_constant_identifier_names
  final String Text_Title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: Text(
            Text_Title,
            style:const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
