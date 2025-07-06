import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Bulletins",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3280ef),
                    )
                ),
                Text(
                    "Line",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                )
              ],
            ),
            SizedBox(height: 20.0),
            Text(
                "Hottest News",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )
            ),
            SizedBox(height: 10.0),
            Container(
              height: MediaQuery.of(context).size.height/2.65,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "images/newpaper.jpg",
                                height: 150,
                                width: MediaQuery.of(context).size.width/1.8,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width/1.8,
                            child: Text(
                                "Please Subscribe To Towhid's Channel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )
                            )
                          ),
                          SizedBox(height: 5.0),
                          Container(
                              width: MediaQuery.of(context).size.width/1.8,
                              child: Text(
                                  "Loreum ipsum is simply a dummy text to show here.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(151,0, 0, 0),
                                  )
                              )
                          ),
                          Spacer(),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff3280ef),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                            margin: EdgeInsets.only(left: 160),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 30,
                            )
                          )
                        ]
                      ),
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
