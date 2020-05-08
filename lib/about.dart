import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class About extends KFDrawerContent {
  About({
    Key key,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<About> {
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
                        Text("About Us", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text("Sri Siddhi Vinayak Mandir\n", style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.bold),),
                  Text("Sri Siddhi Vinayak Mandir (SSVM) is a non-profitable voluntary charitable incorporated organisation (1181371), serving the local Milton Keynes and nearby communities through weekly programmes of vedic practices and community development.\n",
                        style: TextStyle(fontSize: 19 ,color: Colors.black),
                        textAlign: TextAlign.left),
                  Text("SSVM in Milton Keynes has been created with five key principles\n"
                        , style: TextStyle(fontSize: 21 ,color: Colors.red),), 
                    SizedBox(height: 30),
                    Text("Key Principles", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Container(
                      height: 300,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          listItem('Worship', 'Provide a place of worship with consistent pattern of devotional rituals, ceremonies and practices as observed every Sunday with the mission of providing the same level of service on all 7 days every week.'),
                          new SizedBox(width: 15),
                          listItem('Education and Outreach', 'Young and old can engage and learn about Hindu beliefs, classical music (vocal and instruments), Dharmic values and practices. Children are taught about the culture that instills moral and social values promoting cohesion and have an opportunity to learn about the ancient system of Vedic rituals.'),
                          new SizedBox(width: 15),
                          listItem('Celebration','Hindu festivals allow for vibrant and joyous celebrations for the whole community that helps social bonding.'),
                          new SizedBox(width: 15),
                          listItem('Community','Community engagement plays a major part in our goals, which helps foster greater respect, harmony and cooperation among people of different faiths, races, ethnicities and cultures.'),
                          new SizedBox(width: 15),
                          listItem('Charity','Selfless volunteers reaches out to serve the wider community and contribute meaningfully to the local community.'),
                        ],
                      )
                    ),
                    //SizedBox(height: 15),
                    //Text("Stats", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listItem(String heading, String content){
    return Container(
        width: 325,
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
              Text(heading+"\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Text(content+"\n", style: TextStyle(color: Colors.black, fontSize: 18), textAlign: TextAlign.justify),
            ]
          )
        );
  }
}
