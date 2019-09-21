import 'package:flutter/material.dart';

class IdentificationSPage extends StatefulWidget {
   static String tag = 'identifications-page';
   @override
   _IdentificationSPageState createState() => _IdentificationSPageState();
 }
 
 class _IdentificationSPageState extends State<IdentificationSPage> {
   @override
   Widget build(BuildContext context) {
    
    final nom=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Full Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
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
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );

    final postStaff=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Post',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );
    final username=TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );

    final email=TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email Adress',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );
        
    final password=TextFormField(
     autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );

    final cpassword=TextFormField(
     autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );

     final AddStaff=Padding(
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
           
           child: Text('Add Staff', style: TextStyle(color: Colors.black87)),
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
              'NEW STAFF',
              style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,),
            ),
            SizedBox(height: 38.0,),
            nom,
             SizedBox(height: 18.0,),
             contact,
             SizedBox(height: 18.0,),
             postStaff,
             SizedBox(height: 18.0,),
             username,
             SizedBox(height: 18.0,),
             email,
             SizedBox(height: 18.0,),
             password,
             SizedBox(height: 18.0,),
             cpassword,
             SizedBox(height: 24.0,),
             AddStaff,
           ],
         ),
       ),
     );
   }
 }