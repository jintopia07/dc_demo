import 'package:carousel_slider/carousel_slider.dart';
import 'package:dreamcatcher_demo/main.dart';
import 'package:dreamcatcher_demo/screens/home_screen.dart';
import 'package:dreamcatcher_demo/screens/launcher.dart';
import 'package:flutter/material.dart';

class BannerSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topCenter,
      children: [
        BannerSection(),
        Launcher(),
      ],
    );
  }
}

class BannerSection extends StatefulWidget {
  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> _imgList = [
    'assets/images/bg.png',
    'assets/icon/sua.jpg',
    'assets/icon/jiu.jpg',
    'assets/icon/yoonhyeon.jpg',
    'assets/icon/siyeon.jpg',
    'assets/icon/handong.jpg',
    'assets/icon/dami.jpg',
    'assets/icon/gahyeon.jpg',
    'assets/images/head.jpg',
  ];

  int _current;

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          _buildBanner(),
          _buildIndicator(),
        ],
      ),
    );
  }

  Container _buildBanner() => Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 65),
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.873,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: _imgList
              .map(
                (item) => Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
              .toList(),
        ),
      );

  Positioned _buildIndicator() => Positioned(
        bottom: 85,
        left: 8,
        child: Row(
          children: _imgList.map((url) {
            int index = _imgList.indexOf(url);
            return Container(
              width: 8,
              height: _current == index ? 8 : 1,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: _current == index ? BoxShape.circle : BoxShape.rectangle,
                color: Colors.transparent,
              ),
            );
          }).toList(),
        ),
      );
}
