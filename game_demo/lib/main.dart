import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PUBG Gaming Test Application',
      theme: ThemeData.dark(),
    home: Bottomtable(),

    );
  }
}
class Bottomtable extends StatefulWidget{
const Bottomtable({Key key}) : super(key:key);
@override
State<StatefulWidget> createState() =>_Bottomtable();
}
class _Bottomtable extends State<Bottomtable> with SingleTickerProviderStateMixin{
  TabController _tabController;
  static var _tabPages =<Widget>[
    ListView(
      children: <Widget>[
        Container(
          height: 250.0,
          margin: new EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
             color: Colors.white,
          ),
          
          child: ListView(
            children: <Widget>[
              
              Container(
                child: Image.asset("assets/images/pubg.jpg"),

              ),
             
              Row(
                children: <Widget>[
                  
                
                    
                     Text("Solo Match",style: TextStyle(color: Colors.grey,fontSize: 25.0,) ,),
                  
                ],
              )
              
            ],
          ),
        ),
      ],
    ),

    // 2nd page
    ListView(
      children: <Widget>[
        Container(
          height: 400.0,
       
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
             color: Colors.white,
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("assets/pubg.png"),
              ),
            ],
          ),
        ),
      ],
    ),
    
    //page 3
    ListView(
      children: <Widget>[
        Container(
          height: 400.0,
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
             color: Colors.white,
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("assets/pubg.png"),
              ),
            ],
          ),
        ),
      ],
    ),

    //page 4
    ListView(
      children: <Widget>[
        Container(
          height: 400.0,
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
             color: Colors.white,
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.asset("assets/pubg.png"),
              ),
            ],
          ),
        ),
      ],
    ),   
    

  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.account_circle), text: 'Profile',),
    Tab(icon: Icon(Icons.local_play),text: 'Games'),
    Tab(icon: Icon(Icons.attach_money),text: 'Money'),
    Tab(icon: Icon(Icons.dashboard),text: 'Leader Board'),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabPages.length,vsync: this,);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Text('PUBG'),
      ),
      body: TabBarView(
        children : _tabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
      
        child: TabBar(tabs: _kTabs,
        controller: _tabController,
        ),
      ),
    );
  } 
}