import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Schedules extends KFDrawerContent {
  Schedules({
    Key key,
  });

  @override
  _SchedulesState createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
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
                        Text("Donate Us", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Text("Sri Siddhi Vinayak Mandir\n", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("We would always be grateful for any contribution received in cash or any form of donation - standing order etc.\n",
                        style: TextStyle(fontSize: 19,color: Colors.black),
                        textAlign: TextAlign.left),
                  Text("towards supporting the Temple (bank details below) . Donors will be issued e-receipts for their donation..\n",
                        style: TextStyle(fontSize: 19,color: Colors.black),
                        textAlign: TextAlign.left),
                    SizedBox(height: 30),
                    Text("Bank account details\n", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                    //SizedBox(height: 15),
                    Container(
                      height: 250,
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
                          Padding(padding: EdgeInsets.all(10.0)),
                          //padding: const EdgeInsets.all(10.0),
                          Text("HSBC – Sri SiddhiVinayak Mandir,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("Sort code : 403333,\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.justify),
                          Text("Account No: 52521741", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          
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