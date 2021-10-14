import 'package:flutter/material.dart';

class GahyeonDetail extends StatelessWidget {
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
                      image: NetworkImage(
                          'https://static.asiachan.com/Lee.Gahyeon.full.213074.jpg'),
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
                          "Gahyeon",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontFamily: "Kanit", fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lee GaHyeon (이가현)",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Birthday: February 3, 1999",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          child: Text(
                            "Position: Lead Rapper, Sub Vocalist, Maknae",
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
                              Text("- She was born in Seongnam, South Korea.",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 12,
                                  )),
                              Text(
                                  "- She’s like a walking search engine as she remembers all details about the group’s schedule.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- Gahyeon’s ideal type: She doesn’t have an exact ideal type, but she’d prefer someone who smiles prettily and is fun and has a good voice.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- She is friends with PRISTIN‘s Yehana, Dahyun (Twice), Miyeon (G-Idle), Jane (Momoland), Chaewon (April).",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                "-  She’s a master in making seaweed soup.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "-  Gahyeon and Handong share a room in the dorm.",
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
