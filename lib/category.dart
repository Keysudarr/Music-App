import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 100),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Discover",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey[600],
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/acoustic.jpg", title: "Acoustic"),
                  makeItem(
                      image: "assets/period_music.jpg", title: "Period Music"),
                  makeItem(
                      image: "assets/dance_and_electronic.jpg",
                      title: "Dance and Electronic")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Songs",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey[600],
                  size: 30,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/mood.jpg", title: "Mood"),
                  makeItem(image: "assets/nostalgia.jpg", title: "Nostalgia"),
                  makeItem(
                      image: "assets/youth_songs.jpg", title: "Youth Songs")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x80000000),
                          blurRadius: 12.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.indigo[900],
                            Colors.pinkAccent[400]
                          ])),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          margin: EdgeInsets.only(
                              left: 30, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/knocking.jpg"),
                                  fit: BoxFit.cover)),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.black.withOpacity(.7),
                                      Colors.black.withOpacity(.2)
                                    ])),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15, top: 15),
                          child: Column(
                            children: [
                              Text(
                                "Jalebi Baby",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Tesher           ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 15, left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 35,
                              ),
                              Icon(
                                Icons.pause_circle_filled,
                                color: Colors.white,
                                size: 35,
                              ),
                              Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1.3 / 1,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
