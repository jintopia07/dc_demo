import 'package:flutter/material.dart';

class JiUDetail extends StatelessWidget {
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
                      image: AssetImage("assets/images/jiudc.jpg"),
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
                          "JiU",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontFamily: "Kanit", fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kim MinJi (김민지)",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Birthday: May 17, 1994",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          child: Text(
                            "Position: Leader, Lead Vocalist, Lead Dancer, Visual",
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
                              Text("- She was born in Daejeon, South Korea",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 12,
                                  )),
                              Text(
                                  "- JiU has a carefree style and she never skips meals at the dorm. (BNT interview)",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- She has never dyed her hair until “Fly High” promotions. She dyed it red and also likes it a lot.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text("- She does aerobics to relieve stress.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                "-  JiU’s ideal type: Someone who communicates with her well, also a man who can control her a little.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "- JiU is considered to be one of the brightest members always smiling even through rough times.",
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
