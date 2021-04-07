import 'package:flutter/material.dart';

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
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 7,
              spreadRadius: 2,
              offset: Offset(0, 3),
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                iconData!,
                size: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              label!,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
