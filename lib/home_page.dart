import 'package:flutter/material.dart';
import 'package:flutter_app/booking.dart';
import 'package:flutter_app/login_page.dart';

class HomePage extends StatelessWidget {
  static String tag='home-page';
  @override
  Widget build(BuildContext context) {
     final alucard=Hero(
       tag: 'hero',
       child: Padding(
         padding: EdgeInsets.all(16.0),
         child: CircleAvatar(
           radius: 72.0,
           backgroundColor: Colors.transparent,
           backgroundImage: AssetImage('assets/Dragon.png'),
         ),
       ),
     );

    final welcome=Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'TRAVEL',
        style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 31,),
    )
    );

    final lorem=Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'With Dragon Travelling Company',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
    )
    );

    final bok=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
            Navigator.of(context).pushNamed(Bookin.tag);
           },
           
           child: Text('Booking', style: TextStyle(color: Colors.black87)),
           )
       ),
     );

    final logButton=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
           Navigator.of(context).pushNamed(LoginPage.tag);
           },
           
           child: Text('Login', style: TextStyle(color: Colors.black87)),
           )
       ),
     );


  final body = Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28.0),
    decoration: BoxDecoration(
      image: DecorationImage(
            image: AssetImage("assets/buss.jpg"),
            fit: BoxFit.cover,
          ),
    ),
    child: Column(children: <Widget>[
     // new Image.asset("assets/Dragon.png"),
      alucard,welcome,lorem,Spacer(),bok,logButton
      
    ],),
  );

    return Scaffold(
      body: body,
      
    );
  }
}
 