import 'package:flutter/material.dart';
import 'viewCard.dart';
import 'sizeConstraints.dart';

class CustomCards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgSrc;
  final String desc;

  CustomCards(this.title, this.subtitle, this.imgSrc, this.desc);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.circle),
            title: Text(title),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontStyle: FontStyle.italic),
            ),
          ),
          Image.asset(imgSrc),
          Padding(
            padding: const EdgeInsets.fromLTRB(SizeConstraint.edgeInsets,
                SizeConstraint.edgeInsets, SizeConstraint.edgeInsets, 0),
            child: Text(
              desc,
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
                                img: imgSrc,
                                title: title,
                                subtitle: subtitle,
                                desc: desc,
                              )));
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
