import 'package:flutter/material.dart';

class DamiDetail extends StatelessWidget {
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
                      image:
                          NetworkImage('https://i.redd.it/18sbcps9s1u31.jpg'),
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
                          "Dami",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontFamily: "Kanit", fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lee YuBin (이유빈)",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Birthday: March 7, 1997",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          child: Text(
                            "Position: Main Rapper, Lead Dancer, Sub Vocalist",
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
                              Text("-She was born in Seoul, South Korea.",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 12,
                                  )),
                              Text("- She learned Kendo.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text("- She wishes she could raise a pet bear.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- Dami likes animals and thought about becoming a breeder.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                "- She is in a ’97 liner group with Oh My Girl‘s Binnie, Gfriend‘s Yuju, Momoland‘s Jane, HINAPIA‘s Minkyeung and Gyeongwon and DIA / Uni.T‘s Yebin.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "-  Dami’s ideal type: Someone she can learn from, someone who can talk a lot compared to her.",
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
