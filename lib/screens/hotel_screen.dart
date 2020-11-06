import 'package:flutter/material.dart';
import 'package:jamhere/models/activity.dart';
import 'package:jamhere/models/destination.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jamhere/models/hotels.dart';

class HomeScreen extends StatefulWidget {
  final Hotel home;

  HomeScreen({this.home});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
        Stack(
        children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 2.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Hero(
          tag: widget.home.imageUrl,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(
              image: AssetImage(widget.home.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],),
    ],),
    );
  }
}