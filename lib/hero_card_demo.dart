import 'package:flutter/material.dart';
import 'package:parallax_travel_cards_list/city_details_page.dart';
import 'package:parallax_travel_cards_list/city_scenery.dart';
import 'package:parallax_travel_cards_list/components/white_page_route.dart';
import 'package:parallax_travel_cards_list/hotel_list_renderer.dart';
import 'package:parallax_travel_cards_list/models/city_data.dart';
import 'package:parallax_travel_cards_list/models/demo_data.dart';
import 'package:parallax_travel_cards_list/styles.dart';

class HeroCardDemo extends StatelessWidget {
  final CityData city = DemoData().getCity();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: SingleChildScrollView(
          child: Container(
            width: 400,
            color: Colors.red,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildHeader(),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: _buildCityCard(context)),
                  HotelListRenderer(city.hotels),
                ]),
          ),
        )));
  }

  Widget _buildCityCard(context) {
    return Center(
      child: GestureDetector(
        onTap: () => _handlePressedBtn(context),
        child: Container(
          constraints: BoxConstraints(
              //para establecer el max y el min
              maxHeight: MediaQuery.of(context).size.height * .44,
              maxWidth: 300),
          child: Hero(tag: '${city.name}-hero', child: CityScenery(city: city)),
        ),
      ),
    );
  }

  void _handlePressedBtn(context) {
    var detailPage = CityDetailsPage(city);
    Navigator.push(context, WhitePageRoute(enterPage: detailPage));
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(
          right: Styles.hzScreenPadding * 3,
          left: Styles.hzScreenPadding * 3,
          top: 16),
      child: Text('Get ready for your trip!',
          textAlign: TextAlign.center, style: Styles.appHeader),
    );
  }
}
