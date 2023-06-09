import 'package:flutter/cupertino.dart';
import 'package:flutter_state_management/model/tourism_place.dart';
import 'package:flutter/foundation.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone){
    isDone
      ? _doneTourismPlaceList.add(place)
      : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}