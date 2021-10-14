import 'package:dreamcatcher_demo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  launchURL(String url) {
    if (canLaunch(url) != null) {
      launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _lauchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceWebView: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/media/FAgT9ntVcAI8eO9?format=jpg'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/dc.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 90,
                      ),
                      // Text(
                      //   "Dreamcatcher",
                      //   style: Theme.of(context).textTheme.display1.copyWith(
                      //       fontFamily: "Kanit", fontWeight: FontWeight.w900),
                      // ),
                      SizedBox(height: 10),
                      Text(
                        "드림캐쳐",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Kanit",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The group debuted on January 13, 2017",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Kanit",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          "They are currently under Dreamcatcher Company",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SearchBar(),
                      SizedBox(height: 30),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SeassionCard(
                            vdo: "BEcause",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=PEKkdIT8JPM');
                            },
                          ),
                          SeassionCard(
                            vdo: "Odd Eye",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=1QD0FeZyDtQ');
                            },
                          ),
                          SeassionCard(
                            vdo: "BOCA",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=MZ4JGye4dQU');
                            },
                          ),
                          SeassionCard(
                            vdo: "Scream",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=FKlGHHhTOsQ');
                            },
                          ),
                          SeassionCard(
                            vdo: "Deja Vu",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=W761DtH1oRg');
                            },
                          ),
                          SeassionCard(
                            vdo: "PIRI",
                            press: () {
                              _lauchUniversalLinkIos(
                                  'https://www.youtube.com/watch?v=Pq_mbTSR-a0');
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Dreamcatcher",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Kanit",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/logo.png",
                              height: 80,
                              width: 80,
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Dreamcatcher",
                                      style: TextStyle(
                                          fontFamily: "Kanit",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Consists of 7 members: JiU, SuA, Siyeon, Handong, Yoohyeon, Dami, and Gahyeon",
                                    style: TextStyle(
                                        fontFamily: "Kanit", fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final String vdo;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.vdo,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this for this widget
          //padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Mv: $vdo",
                      style: TextStyle(fontFamily: "Kanit"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
