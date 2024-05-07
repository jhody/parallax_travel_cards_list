import 'package:flutter/material.dart';
import 'package:parallax_travel_cards_list/models/city_data.dart';
import 'package:parallax_travel_cards_list/models/hotel_data.dart';

class DemoData {
  final CityData _city = CityData(
      name: 'Paris',
      title: 'Paris, France',
      description:
          'Get ready to explore the city of love filled with romantic scenery and experiences.',
      information:
          'Paris, located along the Seine River, in the north-central part of France. For centuries, Paris has been one of the world’s most important and attractive cities.',
      color: const Color(0xfffdeed5),
      hotels: [
        HotelData('Shangri-La Hotel Paris',
            reviews: 201, price: 593.0, rating: 5),
        HotelData('Hôtel Trinité Haussmann',
            reviews: 133, price: 391, rating: 3),
        HotelData('Maison Breguet', reviews: 128, price: 399, rating: 4),
      ]);

  CityData getCity() => _city;
}
