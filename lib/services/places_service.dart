import 'package:mad/models/place.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PlacesService {
  final key = 'AIzaSyBb9Tkip_K63i5L8UZqF4KVikMZN5clymM';

  Future<List<Place>> getPlaces(double lat, double lng, BitmapDescriptor icon) async {
    var response = await http.get('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=pharmacy&rankby=distance&key=AIzaSyBb9Tkip_K63i5L8UZqF4KVikMZN5clymM');
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place,icon)).toList();
  }

}