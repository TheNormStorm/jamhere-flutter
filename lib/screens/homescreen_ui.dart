import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jamhere/widgets/dest_carousel.dart';
import 'package:jamhere/widgets/hotel_car.dart';

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() => HomeScreenState();

}

class HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> icons = [
    Icons.beach_access,
    Icons.restaurant_menu,
    Icons.hotel,
    Icons.local_bar,
  ];

  buildIcon(int index)
  {
    return GestureDetector(
      onTap:(){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          height: 40.0,
          width: 140.0,
        decoration: BoxDecoration(
          color:  Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(40.0),
        ),
        child: Icon(
            icons[index],
            size: 30,
            color:  Theme.of(context).primaryColorDark,
      ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text('Where would you like to go?', style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold)
            ),
          ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildIcon(0),
              /*  buildIcon(1),
                buildIcon(2),
                buildIcon(3),*/
              ],
            ),
            SizedBox(height: 20.0),
           DestinationCarousel(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildIcon(2),
                /*  buildIcon(1),
                buildIcon(2),
                buildIcon(3),*/
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text('Where would you like to stay?', style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)
              ),
            ),
            SizedBox(height: 20.0),
            HotelCarousel(),
          ],
        ),
      ),
   /*   bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            title: SizedBox.shrink(),
          )

           ],
        ),*/
    );
  }
}