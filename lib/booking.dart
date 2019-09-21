import 'package:flutter/material.dart';

class Bookin extends StatefulWidget {
   static String tag = 'booking-page';
   @override
   _BookinState createState() => _BookinState();
 }
 
 class _BookinState extends State<Bookin> {
   @override
   Widget build(BuildContext context) {
    
    final nom=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Full Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          
        ),
        ),
    );
  final adress=TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Adress',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            
          ),
          ),
      );

     final contact=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Contact',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          
        ),
        ),
    );

    final destination=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Destination',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
        
        ),
        ),
    );

    final price=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Price',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          
        ),
        ),
    );
    
    final datedepart=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'DD/MM/YYYY',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          
        ),
        ),
    );

     
     final AddBook=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
           //Navigator.of(context).pushNamed(ActivitesPage.tag);
           },
           
           child: Text('SAVE', style: TextStyle(color: Colors.black87)),
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
              Text(
              'BOOKING FORMS',
              style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,),
            ),
            SizedBox(height: 38.0,),
            nom,
             SizedBox(height: 18.0,),
             adress,
             SizedBox(height: 18.0,),
             datedepart,
             SizedBox(height: 18.0,),
             price,
             SizedBox(height: 18.0,),
             destination,
             SizedBox(height: 18.0,),
             contact,
             SizedBox(height: 24.0,),
             AddBook,
           ],
         ),
       ),
     );
   }
 }