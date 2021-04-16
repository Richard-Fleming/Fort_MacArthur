import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgSrc;
  final String text;

  CustomCards(this.title, this.subtitle, this.imgSrc, this.text);
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
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.black.withOpacity(0.8)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('View'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
