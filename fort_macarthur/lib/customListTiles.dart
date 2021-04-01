import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_config.dart';

class CustomListTiles extends StatelessWidget {
  final IconData icon;
  final String tabName;
  final Function onTap;

  CustomListTiles(this.icon, this.tabName, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: SizeConfig.backroundCOLOR,
        onTap: () => {},
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        tabName,
                        style: TextStyle(fontSize: 16.0),
                      ))
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
