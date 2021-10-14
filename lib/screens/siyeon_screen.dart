import 'package:flutter/material.dart';

class SiyeonDetail extends StatelessWidget {
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
                          'https://fsa.zobj.net/crop.php?r=0ycQayhUrzvfIx1SeqdnY0e7ZLGSUQqvw37PAmtIdh_N_wZw2O-5TGOWPErDqDBNlM-A0fJEFeu7APyeL21PHdqaXbqXHvsWDh1jF8yJidyjeGYFp_zkyTQYqsUDmRqNNzoLSlTb0OUy9G8c'),
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
                          "Siyeon",
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontFamily: "Kanit", fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lee SiYeon (이시연)",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Birthday: October 1, 1995",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          child: Text(
                            "Position: Main Vocalist",
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
                              Text("- Siyeon’s hometown is Daegu, South Korea.",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 12,
                                  )),
                              Text(
                                  "- She is a big fan of Warlock, a German metal band.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- Siyeon’s role model is Hyorin from SISTAR.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                  "- Siyeon made her debut on January 28, 2020 with the single ‘Paradise’.",
                                  style: TextStyle(
                                      fontFamily: "Kanit", fontSize: 12)),
                              Text(
                                "-  When Siyeon was in school, she was the vocalist for a band for five years in her freshman year to sophomore year.",
                                style: TextStyle(
                                    fontFamily: "Kanit", fontSize: 12),
                              ),
                              Text(
                                "-  Siyeon was in a rock band during her past school time. (191020 RUN.WAV)",
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
