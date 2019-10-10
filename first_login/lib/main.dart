import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.red,

      ),
    );
  }
}


class LoginPage extends StatefulWidget{
  @override
  State createState()=> new LoginPageState();
}



class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin
{



  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
@override

void initState(){
  super.initState();
  _iconAnimationController = new AnimationController(
    vsync: this,
    duration: new Duration(milliseconds: 500)

  );
  _iconAnimation = new CurvedAnimation(
    parent: _iconAnimationController,
    curve: Curves.bounceOut,

  ); 
  _iconAnimation.addListener(()=> this.setState((){}));
  _iconAnimationController.forward();

  }
 Widget build(BuildContext context)
 {
   return new Scaffold(
     backgroundColor: Colors.blue,
     body: new Stack(
       fit: StackFit.expand,
       children: <Widget>[
         new Image(
           image: new AssetImage("assets/yashank.jpeg"),
           fit: BoxFit.cover,
           color: Colors.black87,
           colorBlendMode: BlendMode.darken,
         ),
         new Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: _iconAnimation.value * 100,

            )
          ],
         )
       ],
     )
   );
 }
}