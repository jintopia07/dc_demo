import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 67,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgSce: "assets/icon/calendar.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: "Search",
            svgSce: "assets/icon/search.svg",
          ),
          BottomNavItem(
            title: "Setting",
            svgSce: "assets/icon/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSce;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgSce,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSce,
            color: isActive ? kActiveIconColor : Color(0xFF222B45),
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Kanit",
                color: isActive ? kActiveIconColor : Color(0xFF222B45)),
          ),
        ],
      ),
    );
  }
}
