import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ClipPath clippingAppBar(
    {required String nameWidght,
    required String subNameWidght,
    double? height,
    required BuildContext context}) {
  return ClipPath(
    clipper: Flutter_Clipping(),
    child: Stack(
      children: [
        Container(
          height: height ?? MediaQuery.of(context).size.height * 0.4,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            // alignment: ,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameWidght,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                Text(
                  subNameWidght,
                  style: const TextStyle(
                    color: Color.fromARGB(164, 255, 255, 255),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

//////// Clipping Path

class Flutter_Clipping extends CustomClipper<Path> {
  var path = Path();
  @override
  getClip(Size size) {
    path.lineTo(0, size.height - 120);
    path.quadraticBezierTo(size.width * 0.06, size.height - 50,
        size.width * 0.30, size.height - 100);
    // path.quadraticBezierTo(
    //     size.width * 0.8, size.height - 50, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
////////////// TextFromFaild  //////////////

Padding TextfromFaild(
    {required String hintText,
    required String labelText,
    Color? colorHint,
    Color? colorlabel,
    double? sizeFontHint,
    double? sizeFontLabel,
    double? padding,
    double? border,
    String? valueValdator,
    void Function(String)? onChanged,
    TextInputType? keyboardType}) {
  return Padding(
    padding: EdgeInsets.all(padding ?? 8.0),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(
          color: colorHint ?? Colors.white,
          fontSize: sizeFontHint,
        ),
        labelStyle: TextStyle(
            fontSize: sizeFontLabel,
            fontWeight: FontWeight.bold,
            color: colorlabel ?? Colors.black),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(border ?? 15.0),
            ),
            borderSide: BorderSide(color: Colors.grey)),
      ),
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return valueValdator;
        }
        return null;
      },
      onSaved: (value) {
        // Handle saving the value
      },
      onChanged: onChanged,
    ),
  );
}
///////////////////// Button Auth

Center ButtonAuth({
  required void Function()? onPressed,
  ButtonStyle? style,
  required String data,
}) {
  return Center(
    child: ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              // لون النص
              elevation: 5, // ظل الزر
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
                // شكل الزر
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 75, vertical: 15), // الحواف الداخلية
            ),
        child: Text(
          data,
          style: TextStyle(color: Colors.white),
        )),
  );
}

///////////////////// Dont Account Text

Row DontAccount(
    {required String data,
    required String NameWidght,
    required void Function()? onPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(data),
      TextButton(
        onPressed: onPressed,
        child: Text(
          NameWidght,
          style: TextStyle(color: Colors.red),
        ),
      ),
    ],
  );
}
