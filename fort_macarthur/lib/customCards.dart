import 'package:flutter/material.dart';
import 'viewCard.dart';
import 'sizeConstraints.dart';

class CustomCards extends StatelessWidget {
  final String? title, subtitle, imgSrc, desc;
  final Icon? icon;
  final Function()? action;
  final TextButton? buttonRoute;
  const CustomCards(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imgSrc,
      required this.desc,
      required this.icon,
      required this.action,
      required this.buttonRoute})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: icon!,
            title: Text(title!),
            subtitle: Text(
              subtitle!,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontStyle: FontStyle.italic),
            ),
          ),
          Image.asset(imgSrc!),
          Padding(
            padding: const EdgeInsets.fromLTRB(SizeConstraint.edgeInsets,
                SizeConstraint.edgeInsets, SizeConstraint.edgeInsets, 0),
            child: Text(
              desc!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black.withOpacity(0.8)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewCard(
                              imgSrc: imgSrc!,
                              title: title!,
                              subtitle: subtitle!,
                              desc: desc!,
                              action: action,
                              buttonRoute: buttonRoute)));
                },
                child: const Text('View'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
