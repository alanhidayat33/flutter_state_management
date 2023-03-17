import 'package:flutter/material.dart';
import 'package:flutter_state_management/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key : key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'FiraCode',
                ),
              ),
            ),//title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(place.open),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(place.time),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      Text(place.price),
                    ],
                  ),
                ],

              ), //Row
            ), // Icon Kalender
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ), //container description
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            place.img1
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            place.img2
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            place.img3
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            place.img4
                        ),
                      ),
                    ),
                  ],
                )
            ), //container image
          ],
        ),
      ),
    );
  }
}