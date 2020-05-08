import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Home extends KFDrawerContent {
  Home({
    Key key,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        color: Colors.yellow,
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
                        Text("Welcome", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text("Sri Siddhi Vinayak Mandir", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text("Sri Siddhi Vinayak Mandir (SSVM) is a non-profitable voluntary charitable incorporated organisation (1181371), serving the local Milton Keynes and nearby communities through weekly programmes of vedic practices and community development."
                        , style: TextStyle(fontSize: 18 ,color: Colors.black),),
                    SizedBox(height: 30),
                    Text("Images", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Container(
                      height: 300,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          listItem('images/new1.jpg'),
                          new SizedBox(width: 15),
                          listItem('images/new2.jpg'),
                          new SizedBox(width: 15),
                          listItem('images/new3.jpg'),
                        ],
                      )
                    ),
                    SizedBox(height: 15),
                    //Text("Stats", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellowAccent
                ),
                child: new ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: 300.0,
                    ),
                    
                    child: new Scrollbar(
                        child: new SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                            reverse: true,
                            child: Column(
                             // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //Text("\n", style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("Important Updates\n", style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("  In the interest of the health of all devotees and visitors as a precautionary measure, we have been informed by MKHA community centre trustees that temple will be now closed to public. It will remain closed until further notice. All SSVM planned events have been cancelled and we will keep informing you with the updates.\n",
                                      style: TextStyle(color: Colors.redAccent),
                                      textAlign: TextAlign.justify),
                                Text("  We are pleased to inform you all that now SSVM is a registered CIO charity with the Charity Number 1181371.\n",
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.justify),
                                Text("  We welcome donations and sponsorship for our temple from everyone.\n",
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.justify),
                                  ],
                                ),
                          ),
                ),
            )

              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listItem(String imgpath){
    return InkWell(
      onTap: (){
        
      },
      child: Container(
        width: 325,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(imgpath),
          fit: BoxFit.cover
          ),
        ),
      ),
    );
  }

  /*Widget listItemStats(String imgpath, String name, bool value){
    return Container(
      width: 110,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: value == true ? Colors.white : Color.fromRGBO(75, 97, 88, 1.0)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Image(image: AssetImage(imgpath),width: 45,height: 45, color: value == true ? Colors.black : Colors.white),
          SizedBox(height: 15),
          Text(name, style: TextStyle(fontSize: 13, color: value == true ? Colors.black : Colors.white)),
          SizedBox(height: 5),
          Switch(
            value: value,
            onChanged: (newVal){
              setState(() {
                value = newVal;
                print(newVal);
              });
            },
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }*/
}
