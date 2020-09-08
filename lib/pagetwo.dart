import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final heroTag;

  SecondPage({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 60,
            right: 60,
            top: 100,
            child: Text("DIAMOND RINGS", style: TextStyle(color: Color(0xFF685343), fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1), textAlign: TextAlign.center),
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/left-arrow.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/user.png"),
                      fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200)
                ),
                color: Color(0xFFf2f0f0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text("Eluria Diamond", style: TextStyle(color: Color(0xFF3b5868), fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 1),),
                  ),
                  SizedBox(height: 10),
                  Text("Ring", style: TextStyle(color: Color(0xFF3b5868), fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 1)),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/emerald.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("18k", style: TextStyle(color: Color(0xFF93867e), fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/gold-bar.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("24k", style: TextStyle(color: Color(0xFF93867e), fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/size.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("3cm", style: TextStyle(color: Color(0xFF93867e), fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 110,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/image1.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("images/image2.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text("\$210/h", style: TextStyle(fontSize: 25, color: Color(0xFF576d7a), fontWeight: FontWeight.bold)),
                      ),
                      Spacer(),
                      Container(
                        height: 75,
                        width: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                            ),
                            color: Color(0xFFc59a78)
                        ),
                        child: Center(
                          child: Text("Rent", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Hero(
            tag: heroTag,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 220),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(heroTag),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}