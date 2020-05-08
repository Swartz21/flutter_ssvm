import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ssvm/about.dart';
import 'package:flutter_ssvm/class_builder.dart';
import 'package:flutter_ssvm/home.dart';
import 'package:flutter_ssvm/schedules.dart';
import 'package:flutter_ssvm/stats.dart';
import 'package:kf_drawer/kf_drawer.dart';

void main() {
  ClassBuilder.registerClasses();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: ClassBuilder.fromString('Home'),
      items: [
        KFDrawerItem.initWithPage(
          text: Text('Home', style: TextStyle(color: Colors.yellow, fontSize: 18)),
          icon: Icon(Icons.home, color: Colors.yellow),
          page: Home(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'About us',
            style: TextStyle(color: Colors.yellow, fontSize: 18),
          ),
          icon: Icon(Icons.account_box, color: Colors.yellow),
          page: About(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Services',
            style: TextStyle(color: Colors.yellow, fontSize: 18),
          ),
          icon: Icon(Icons.notifications_active, color: Colors.yellow),
          page: ClassBuilder.fromString('Notifications'),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Contact Us',
            style: TextStyle(color: Colors.yellow, fontSize: 18),
          ),
          icon: Icon(Icons.contact_mail, color: Colors.yellow),
          page: Stats(),
        ),
        KFDrawerItem.initWithPage(
          text: Text(
            'Donate Us',
            style: TextStyle(color: Colors.yellow, fontSize: 18),
          ),
          icon: Icon(Icons.help, color: Colors.yellow),
          page: Schedules(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage('images/image.jpg'),
                        fit: BoxFit.cover
                    )
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('Sri Siddhi Vinayak Mandir', style: new TextStyle(fontSize: 17, color: Colors.white)),
                    new SizedBox(height: 2),
                    new Text('Charity Number 1181371', style: new TextStyle(fontSize: 15, color: Colors.grey)),
                      
                  ],
                )
              ],
            ),
          ),
        ),
        footer: KFDrawerItem(
          text: Text(
            'Copyright © 2020 SSVM\nDeveloped by RADFINKORP',
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            //colors: [Color.fromRGBO(31, 58, 47, 1.0), Color.fromRGBO(31, 58, 47, 1.0)],
            colors: [Colors.deepPurple, Colors.blueAccent],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}

