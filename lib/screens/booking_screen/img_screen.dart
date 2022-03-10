// ignore_for_file: prefer_const_constructors, unused_local_variable, unused_field
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShowBusImage extends StatefulWidget {
  const SlideShowBusImage({Key? key}) : super(key: key);

  @override
  _SlideShowBusImageState createState() => _SlideShowBusImageState();
}

class _SlideShowBusImageState extends State<SlideShowBusImage> {
  final _imageUrls = [
    "lib/assets/bus.jpg",
    "lib/assets/BlueBus.jpg",
    "lib/assets/RedTheBusLondon.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    var title = "Image Slider Widget";
    return ImageSlideshow(
      width: double.infinity,
      height: 200,
      initialPage: 0,
      indicatorColor: Colors.blue,
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(_imageUrls[0], fit: BoxFit.cover),
        Image.asset(_imageUrls[1], fit: BoxFit.cover),
        Image.asset(_imageUrls[2], fit: BoxFit.cover),
      ],
    );
  }
}
