import 'package:flutter/material.dart';

class BookingList extends StatefulWidget {
   static String tag = 'reservation-page';
   @override
   _BookingListState createState() => _BookingListState();
 }
 
 class _BookingListState extends State<BookingList> {
   @override
   Widget build(BuildContext context) {
       
     
     
     return Scaffold(
       backgroundColor: Colors.white70,
       body: Center(
         child: ListView(
           shrinkWrap: true,
           padding: EdgeInsets.only(left: 24.0,right: 24.0),
           children: <Widget>[
              Text(
              'BOOKING LIST',
              style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,),
            ),
           
           ],
         ),
       ),
     );
   }
 }