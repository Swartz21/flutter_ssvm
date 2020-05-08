import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Stats extends KFDrawerContent {
  Stats({
    Key key,
  });

  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    child: Material(
                      shadowColor: Colors.transparent,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                        onPressed: widget.onMenuPressed,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/image.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 15)
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Contact Us", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Text("Sri Siddhi Vinayak Mandir\n", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("The Siddhi vinayak temple is located in MKHA community centre in Broughton, very easy access to M1 and centrally located in Milton Keynes.\n",
                        style: TextStyle(fontSize: 19,color: Colors.black),
                        textAlign: TextAlign.left),
                  Text("You can reach us by Bus, Train and car. Please give us a shout for more information on Bus service from other parts of United Kingdom.\n",
                        style: TextStyle(fontSize: 19,color: Colors.black),
                        textAlign: TextAlign.left),
                    SizedBox(height: 15),
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellowAccent
                      //image: DecorationImage(image: AssetImage(imgpath),
                      //fit: BoxFit.cover
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(20.0)),
                          //padding: const EdgeInsets.all(10.0),
                          Text("MKHA Community Centre,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("Ferry Meadows Close,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.justify),
                          Text("Broughton,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("MK10 9QY,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("Contact: siddhivinayakmk@gmail.com", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ]
                      )
                    ),
                    //SizedBox(height: 15),
                    //Text("Contact us for any other services.", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  
}