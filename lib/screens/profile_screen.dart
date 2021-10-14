import 'package:dreamcatcher_demo/screens/dami_screen.dart';
import 'package:dreamcatcher_demo/screens/gahyeon_screen.dart';
import 'package:dreamcatcher_demo/screens/handong_screen.dart';
import 'package:dreamcatcher_demo/screens/jiu_screen.dart';
import 'package:dreamcatcher_demo/screens/siyeon_screen.dart';
import 'package:dreamcatcher_demo/screens/sua_screen.dart';
import 'package:dreamcatcher_demo/screens/yoonhyeon_screen.dart';
import 'package:dreamcatcher_demo/widgets/category_card.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://pbs.twimg.com/media/FAgT9ntVcAI8eO9?format=jpg'),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hello \nDreamcatcher",
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(fontFamily: "Kanit", fontWeight: FontWeight.w900),
              ),
              Expanded(
                  child: GridView.count(
                padding: EdgeInsets.only(bottom: 20, top: 20),
                crossAxisCount: 2,
                childAspectRatio: .85,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  CategoryCard(
                    title: "SuA",
                    jpgSrc: "assets/icon/sua.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SuADetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "JiU",
                    jpgSrc: "assets/icon/jiu.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return JiUDetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Yoonhyeon",
                    jpgSrc: "assets/icon/yoonhyeon.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return YoonhyeonDetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Siyeon",
                    jpgSrc: "assets/icon/siyeon.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SiyeonDetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Handong",
                    jpgSrc: "assets/icon/handong.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HandongDetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Dami",
                    jpgSrc: "assets/icon/dami.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return DamiDetail();
                        }),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Gahyeon",
                    jpgSrc: "assets/icon/gahyeon.jpg",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return GahyeonDetail();
                        }),
                      );
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
