import 'package:flutter/material.dart';
import 'package:flutter_ring_test_app/pagetwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF355364),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45, right: 45, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.menu, color: Colors.white, size: 30),
                            Icon(Icons.search, color: Colors.white, size: 30)
                          ],
                        ),
                        SizedBox(height: 35),
                        Text("Hello, Annie", style: TextStyle(color: Color(0xFFbcc3c8) ,fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 15),
                        Text("Luxury", style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 35, letterSpacing: 3)),
                        SizedBox(height: 15),
                        Text("Manager", style: TextStyle(color: Colors.white, fontSize: 35, letterSpacing: 3))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 45, right: 45),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Color(0xFFc59a78),
                          offset: Offset(0.0, 10.0),
                          blurRadius: 15,
                        )
                      ],
                      color: Color(0xFFc59a78)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Your Renting", style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.bold, fontSize: 18)),
                            SizedBox(height: 5),
                            Text("History", style: TextStyle(color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.bold, fontSize: 18))
                          ],
                        ),
                        SizedBox(width: 15),
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  height: 25,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/arrow.png"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Colors.white.withOpacity(0.2)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 125,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFf2f0f0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/diamond.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Jewellery", style: TextStyle(color: Color(0xFF93867e), fontSize: 17, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFf2f0f0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/jacket.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Clothing", style: TextStyle(color: Color(0xFF93867e), fontSize: 17, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, top: 40),
            child: Text("Ready to Rent", style: TextStyle(color: Color(0xFF8c8178), fontSize: 22, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45, right: 45, top: 35),
            child: Container(
              height: 250,
              child: ListView(
                children: <Widget>[
                  listItem("images/ring.png"),
                  SizedBox(height: 20),
                  listItem("images/ring2.png"),
                  SizedBox(height: 20),
                  listItem("images/ring3.png"),
                  SizedBox(height: 20),
                  listItem("images/ring4.png"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  listItem(String imgPath){
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondPage(heroTag: imgPath)
            ));
          },
          child: Hero(
            tag: imgPath,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("7 Carat", style: TextStyle(color: Color(0xFF8c8178), fontSize: 18)),
            SizedBox(height: 5),
            Text("Diamond Ring", style: TextStyle(color: Color(0xFF8c8178), fontSize: 18)),
          ],
        ),
        SizedBox(width: 25),
        Spacer(),
        Text('\$125/h', style: TextStyle(color: Color(0xFFd2b299), fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
