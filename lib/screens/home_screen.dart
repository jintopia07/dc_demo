import 'dart:convert';

import 'package:dreamcatcher_demo/bannerslide.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://pbs.twimg.com/media/FAgT9ntVcAI8eO9?format=jpg'),
            fit: BoxFit.cover),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                BannerSection(),
                Playlist(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Design and Development by Nutthanitcha.n",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  List<String> CoverList = [
    "https://secimage.yes24.com/momo/TopCate1040/MidCate001/103905001.jpg",
    "https://static.wikia.nocookie.net/dreamcatcherwiki/images/c/c8/FallAsleepInTheMirrorPhysical.jpg",
    "https://static.wikia.nocookie.net/dreamcatcherwiki/images/d/db/EscapeTheEraOutside.jpg",
    "https://secimage.yes24.com/momo/TopCate1982/MidCate010/198198143.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "드림캐쳐 (Dreamcatcher)",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Expanded(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ListItem(CoverList[0], "Nightmare", "2017.01.12"),
                  ListItem(
                      CoverList[1], "Fall Asleep In The Mirror", "2017.04.05"),
                  ListItem(CoverList[2], "Escape the ERA [Outside ver.]",
                      "2018.05.10"),
                  ListItem(CoverList[3], "Alone In The City [Light ver.]",
                      "2018.09.20"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ListItem(String coverUrl, String AlbumTitle, String singerName) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.network(coverUrl),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AlbumTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      singerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
