import 'package:flutter/material.dart';

class SuADetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dreamecatcher'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/media/FAgT9ntVcAI8eO9?format=jpg'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * .35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/suadc.jpg"),
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
                          height: 70,
                        ),
                        Text(
                          "SuA",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontFamily: "Kanit", fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kim BoRa (김보라)",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Birthday: August 10, 1994",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          child: Text(
                            "Position: Main Dancer, Sub Vocalist, Lead Rapper",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Kanit",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 40),
                        // Text(
                        //   "Profile",
                        //   style: TextStyle(
                        //       color: Colors.red,
                        //       fontFamily: "Kanit",
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Profile",
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Text("- SuA’s hometown is Changwon, South Korea.",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 12,
                                  )),
                              Text("- SuA’s favorite color is red.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text("- Her favorite animal is an elephant.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- SuA is the quickest to learn the dance routines quickly and helps the other members.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                "- She as a friendly personality and likes to be around people who can make her laugh.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "- SuA’s role models are Big Bang and Lee Hyori.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "- She trained the longest of all the members.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   "Dreamcatcher",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontFamily: "Kanit",
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.bold),
                        // ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
