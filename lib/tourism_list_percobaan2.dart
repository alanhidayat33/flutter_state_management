import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_management/provider/done_tourism_provider.dart';
import 'package:flutter_state_management/list_item.dart';
import 'package:flutter_state_management/model/tourism_place.dart';
import 'package:flutter_state_management/detail_screen.dart';

class TourismList extends StatefulWidget{
  const TourismList({ Key ? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      desc: 'Museum inside a decommissioned Russian war submarinne with tours & an adjacent park with cafes. Clean and well mainntained. Car pakr cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the buildinng beside the submarine.',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/monkasel_1.jpg',
      img2: 'assets/images/monkasel_2.jpg',
      img3: 'assets/images/monkasel_3.jpg',
      img4: 'assets/images/monkasel_4.jpg',
    ),
    TourismPlace(
      name: 'Klenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg',
      desc: 'Ini tentang klenteng',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/klenteng_1.jpg',
      img2: 'assets/images/klenteng_2.jpg',
      img3: 'assets/images/klenteng_3.jpg',
      img4: 'assets/images/klenteng_4.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Kremebngan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
      desc: 'Sampoerna enak dipakai',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/sampoerna_1.jpg',
      img2: 'assets/images/sampoerna_2.jpg',
      img3: 'assets/images/sampoerna_3.jpg',
      img4: 'assets/images/sampoerna_4.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg',
      desc: 'Tugu untuk berwisata',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/pahlawan_1.jpg',
      img2: 'assets/images/pahlawan_2.jpg',
      img3: 'assets/images/pahlawan_3.jpg',
      img4: 'assets/images/pahlawan_4.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/suroboyo.jpg',
      desc: 'Patung Suroboyo untuk berwisata',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/suroboyo_1.jpg',
      img2: 'assets/images/suroboyo_2.jpg',
      img3: 'assets/images/suroboyo_3.jpg',
      img4: 'assets/images/suroboyo_4.jpg',
    ),
    TourismPlace(
      name: 'Hutam bambu keputih',
      location: 'Keputih',
      imageAsset: 'assets/images/bambu.jpg',
      desc: 'Keputih',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/bambu_1.jpg',
      img2: 'assets/images/bambu_2.jpg',
      img3: 'assets/images/bambu_3.jpg',
      img4: 'assets/images/bambu_4.jpg',
    ),
    TourismPlace(
      name: 'Surabaya Zoo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/bonbin.jpg',
      desc: 'Bonbin',
      open: 'Open Everyday',
      time: '08:00-16:00',
      price: 'Rp 10.000,-',
      img1: 'assets/images/bonbin_1.jpg',
      img2: 'assets/images/bonbin_2.jpg',
      img3: 'assets/images/bonbin_3.jpg',
      img4: 'assets/images/bonbin_4.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context,index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data,widget){
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value){
                  setState(() {
                    if(value!=null){
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            }
          ),

        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}