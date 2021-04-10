import 'package:flutter/material.dart';
import 'package:music_app/category.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/main.jpg"), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 320),
            child: Center(
              child: Text(
                "Flutter Music",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 25,
                      bottom: 40,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category()));
                      },
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Category(),
                              ),
                            );
                          },
                          child: _animatedButton()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _animatedButton() {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              offset: Offset(0.0, 5.0),
            ),
          ],
          color: Colors.white),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discover',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900]),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 30,
                color: Colors.brown[900],
              )
            ],
          ),
        ),
      ),
    );
  }
}
