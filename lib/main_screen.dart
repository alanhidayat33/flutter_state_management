import 'package:flutter/material.dart';
import 'package:flutter_state_management/detail_screen.dart';
import 'package:flutter_state_management/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Wisata Bertobat'),
      ),
      body: ListView.builder(
        itemBuilder: (context,index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }

  Widget listItem(TourismPlace place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.location,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}