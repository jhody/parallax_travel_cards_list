import 'package:flutter/material.dart';
import 'package:parallax_travel_cards_list/models/hotel_data.dart';

class CityData {
  final String name;
  final String title;
  final String description;
  final String information;
  final Color color;
  final List<HotelData> hotels;

  CityData({required this.title, required this.name, required this.description, required this.information, required this.color, required this.hotels});
}
