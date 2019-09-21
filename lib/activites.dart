import 'package:flutter/material.dart';
import 'package:flutter_app/identifications.dart';

import 'reservation.dart';

class ActivitesPage extends StatefulWidget {
   static String tag = 'activites-page';
   @override
   _ActivitesPageState createState() => _ActivitesPageState();
 }
 
 class _ActivitesPageState extends State<ActivitesPage> {
   @override
   Widget build(BuildContext context) {
    
    final logo =Hero(
       tag: 'hero',
       child: CircleAvatar(
         backgroundColor: Colors.transparent,
         radius: 48.0,
         child: Image.asset('assets/Dragon.png'),
       ),
     );
    
     final booklistButton=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
           Navigator.of(context).pushNamed(BookingList.tag);
           },
           
           child: Text('BOOKING LIST', style: TextStyle(color: Colors.black87)),
           )
       ),
     );

final staffidButton=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
            Navigator.of(context).pushNamed(IdentificationSPage.tag);
           },
           
           child: Text('STAFF IDENTIFICATION', style: TextStyle(color: Colors.black87)),
           )
       ),
     );


     return Scaffold(
       backgroundColor: Colors.white70,
       body: Center(
         child: ListView(
           shrinkWrap: true,
           padding: EdgeInsets.only(left: 24.0,right: 24.0),
           children: <Widget>[
             logo,
             booklistButton,
             staffidButton
             
           ],
         ),
       ),
     );
   }
 }