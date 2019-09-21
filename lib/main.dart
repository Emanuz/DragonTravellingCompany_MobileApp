import 'package:flutter/material.dart';
import 'package:flutter_app/reservation.dart';
import 'identifications.dart';
import 'activites.dart';
import 'booking.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes =<String, WidgetBuilder>{
    LoginPage.tag:(context)=>LoginPage(),
    HomePage.tag:(context)=>HomePage(),
    Bookin.tag:(context)=>Bookin(),
    BookingList.tag:(context)=>BookingList(),
    ActivitesPage.tag:(context)=>ActivitesPage(),
    IdentificationSPage.tag:(context)=>IdentificationSPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dragon Teams',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
      routes: routes,
    );
  }
}
