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

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Container(
          width: 220.0,
          height: 220.0,
          
          child: Card(
            child: Image.asset('assets/images/profile.png'),
          )
          
        ),
       Container(
          padding: EdgeInsets.all(8.0),
          
          child: Card(
            child: Text('Yashank',style: TextStyle(color: Colors.white,fontSize: 30.0),)
      )
      
    ),
    Container(padding: EdgeInsets.all(8.0),child: Text('Level-1',style: TextStyle(color: Colors.yellow),),),
    ListTile(
      
      title: Text('Coins You have - 50'),
      trailing: Icon(Icons.attach_money),
    ),
    
    ]
    ),
// tab 2 starts
    Center(child: Card(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 180.0,
            child: Stack(children: <Widget>[
              Positioned.fill(
                child: Image.asset('assets/images/pubg.jpg',fit: BoxFit.cover,),
                
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0,
                right: 16.0,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Solo',)
                    

                ),
                )
            ],),
          )
        ],
      ),
    ),
      
    ),
    
    Center(child: Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue,
      child: Text('Pubg'),
      
    ),
    ),
    Center(child: Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue,
      child: Text('Pubg'),
      
    ),
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