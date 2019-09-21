import 'package:flutter/material.dart';
import 'package:flutter_app/activites.dart';

 class LoginPage extends StatefulWidget {
   static String tag = 'login-page';
   @override
   _LoginPageState createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> {
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
    
    final email=TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: "xyz@domain.com",
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );
     
     
    final password=TextFormField(
     autofocus: false,
      initialValue: "password",
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        ),
    );
     
     final loginButton=Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         borderRadius: BorderRadius.circular(20.0),
         shadowColor: Colors.lime,
         elevation:10.0,
         child:MaterialButton(
           minWidth:200.0,
           height: 42.0,
           onPressed: (){
           Navigator.of(context).pushNamed(ActivitesPage.tag);
           },
           
           child: Text('Login', style: TextStyle(color: Colors.black87)),
           )
       ),
     );
     
     final forgotLabel=FlatButton(
       child: Text(
         'Forgot password ?',
         style: TextStyle(color: Colors.black54),
       ),
       onPressed: (){},
     );

     return Scaffold(
       backgroundColor: Colors.white70,
       body: Center(
         child: ListView(
           shrinkWrap: true,
           padding: EdgeInsets.only(left: 24.0,right: 24.0),
           children: <Widget>[
             logo,
             SizedBox(height: 48.0,),
             email,
             SizedBox(height: 8.0,),
             password,
             SizedBox(height: 24.0,),
             loginButton,
             forgotLabel
           ],
         ),
       ),
     );
   }
 }