import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoViewPage extends StatelessWidget {
  String url;

  PhotoViewPage(this.url);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          child: PhotoView(
            imageProvider: CachedNetworkImageProvider(url),
          ),
        ),
      ),
    );
  }
}
