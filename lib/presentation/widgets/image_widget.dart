import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  const ImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        imageUrl,
        height: 130,
        width: 130,
      ),
    );
  }
}
