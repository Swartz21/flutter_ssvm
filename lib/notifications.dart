import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

class Notifications extends KFDrawerContent {
  Notifications({
    Key key,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Notifications> {
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
                        Text("Services", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    SizedBox(height: 20),
                    //Text("Sri Siddhi Vinayak Mandir\n", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Siddhi Vinayak Mandir Seva Price List.\n",
                        style: TextStyle(fontSize: 19 ,color: Colors.black),
                        textAlign: TextAlign.left),
                    SizedBox(height: 15),
                    Container(
                      height: 400,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          listItem('New Baby Blessing', '15', 'Time: 10 to 20 min', 'Puja details: Sankalpam with Gothram, Nakshatram, Name, etc., of devotee, 108 nama Archana, Ganapathi Pooja, New Baby Blessing List of items required: Fruits, Coconut, New clothes for baby. (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Annaprasana', '20', 'Time: 20 min', 'Puja details: Sankalpam with Gothram, Nakshatram, Name, etc., for the baby, 108 nama Archana,Ganapathi Pooja, Annaprasana List of items required: Bananas 6, Coconuts 1, Flowers 2 bouquets (Chrysanthemum / Roses), Sweet rice. (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Namakaranam','30','Time: 40 min','Puja details: Sankalpam with Gothram, Nakshtram, Name, etc., for the baby, 108 nama Archana, Ganapathi Pooja, Annaprasana List of items required: Bananas 6, Coconuts 2, Rice – 2Kgs, Sweet rice prasadam, Flowers 2 bouquets ( Chrysanthemum / Rose) (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Aksharabhyasam','20','Time: 20 min','Puja details: Sankalpam with Gothramm, Nakshtram, Name, etc., for the baby, 108 nama Archana, Ganapathi Pooja, Aksharabhyasam List of items required: Bananas 6, Coconuts 1, Flowers 1 bouquet(Chrysanthemum / Rose), Paddy – 2Kgs, Slates/Erasable/ReWritable slate & pen, Chalk Pieces(if bringing slate), Turmeric Sticks 2nos (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Abhishekam & Alankaram','51','Time: 45 to 60 min','Puja details: Abhisekam will relevant materials, Alankaram, Astothram and Aarthi List of items required: 1. Panchamritham with Banana, Sugar candy, Cashew nuts, Dry Grapes, Cardamom. 2. Turmeric Powder 2.Honey 3.Milk 4.Yogurt 5.Fruit – Orange / lemon 5.Coconuts 6.Sandal power 7.Rose water (All items are provided by temple)'),
                          new SizedBox(width: 15),
                          listItem('Sahasranama Archana', '51', 'Time: 45 to 60 min', 'Puja details: Sankalpam with Gothramm, Nakshtram, Name, etc., of the devotee with 1008 nama Archana List of items required: Ganapathi with Flowers preferably Chrysanthemum or Roses 2. Lakshmi with Kum Kum, 3. Saraswathi with Kum Kum'),
                          new SizedBox(width: 15),
                          listItem('Vahana Puja', '20', 'Time: 10 to 20 min', 'Puja details: Sankalpam with Gothram, Nakshatram, Name, etc., of devotee, 108 nama Archana, Ganapathi Pooja, Vahana Puja to Keys only List of items required: Kumkum 100gms, Lemon x 5, Camphor 100gms, Sandal powder 100gms (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Fruits Sponsor','15','Time: 10 to 20 min','Puja details: Sankalpam with Gothram, Nakshtram, Name, etc., of the devotee with 108 nama Archana'),
                          new SizedBox(width: 15),
                          listItem('Flower Sponsor','10','Time: 10 to 20 min','Puja details: Sankalpam with Gothram, Nakshtram, Name, etc., of the devotee with 108 nama Archana'),
                          new SizedBox(width: 15),
                          listItem('Kalasa Puja','20','Time: 20 to 30 min','Puja details: Sankalpam with Gothram, Nakshtram, Name, etc., for the baby, 108 nama Archana, Ganapathi Pooja, Kalasa Puja List of items required: Mango / Beetle leaves x 10, Coconut x 2, Beetle nuts x 6, Bananas x 4, Flowers 2 bouquets (Chrysanthemum / Rose) (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('KumKum Archana','15','Time: 10 to 20 min','Puja details: Sankalpam with Gothram, Nakshatram, Name, etc., of devotee, 108 nama Archana, Ganapathi Pooja, KumKum Archana List of items required: Kumkum 200gms, Beetle leaves x 6, Coconuts x 2, Beetle nuts x 6, Banana x 4, Flowers x 2 bouquets (Chrysanthemum / Rose) (Devotee to bring the required items)'),
                          new SizedBox(width: 15),
                          listItem('Deepa Lakshmi Puja','20','Time: 30 min','Puja details: Sankalpam with Gothram, Nakshtram, Name, etc., of the devotee, Deepa Pooja List of items required: Deepam, Fruits, Kumkum, Turmeric powder, Betelnut(paan) leaves, betelnuts, Incense sticks, Camphor, Banana, Coconuts, Sandalwood powder, Flowers ( preferably Chrysanthemum or Rose) (Devotee to bring the required items)'),

],
                      )
                    ),
                    SizedBox(height: 15),
                    Text("Contact us for any other services.", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listItem(String heading, String price, String timing, String content){
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
              Text(heading, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
              Text("£"+ price+"\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),textAlign: TextAlign.end),
              Text(timing+"\n", style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.justify),
              Text(content+"\n", style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.justify),
            ]
          )
        );
  }
}