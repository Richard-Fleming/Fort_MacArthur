import 'package:flutter/material.dart';
import 'package:fort_macarthur/sizeConstraints.dart';

class InfoBox extends StatelessWidget {
  final Color color;
  final IconData? iconData;
  final String? label;
  final void Function()? onTap;

  InfoBox(
      {Key? key, required this.color, this.iconData, this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConstraint.borderRadius)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                iconData!,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              label!,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
