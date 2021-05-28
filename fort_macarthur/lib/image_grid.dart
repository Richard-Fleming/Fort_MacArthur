import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fort_macarthur/device.dart';

class ImageView extends StatelessWidget {
  final ImageGridData image;

  ImageView({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Device.backroundCOLOR,
      appBar: AppBar(
        title: image.title != null ? Text(image.title!) : Text("Image"),
      ),
      body: InteractiveViewer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            image.imagePath,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}

class ImageGridView extends StatelessWidget {
  final List<ImageGridData> data;
  final int? crossAxisCount;
  final double? elevation;
  final BoxFit? imageFit;

  ImageGridView(
      {Key? key,
      required this.data,
      this.crossAxisCount,
      this.elevation,
      this.imageFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: crossAxisCount != null ? crossAxisCount! : 3,
        children: data
            .map((data) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageView(
                                image: ImageGridData(
                                    imagePath: data.imagePath,
                                    title: data.title))));
                  },
                  child: Card(
                    elevation: elevation != null ? elevation! : 1,
                    child: Image.asset(
                      "assets/logo/logo.png",
                      fit: imageFit != null ? imageFit! : BoxFit.fitWidth,
                    ),
                  ),
                ))
            .toList());
  }
}

class ImageGridData {
  String imagePath;
  String? title;

  ImageGridData({required this.imagePath, this.title});
}
