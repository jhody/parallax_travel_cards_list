import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:parallax_travel_cards_list/city_scenery.dart';
import 'package:parallax_travel_cards_list/hero_card_demo.dart';
import 'package:parallax_travel_cards_list/models/city_data.dart';
import 'package:parallax_travel_cards_list/models/demo_data.dart';
import 'package:parallax_travel_cards_list/shared/app_scroll_behavior.dart';
import 'package:parallax_travel_cards_list/shared/env.dart';
import 'package:parallax_travel_cards_list/styles.dart';
//import 'package:shared/env.dart';
//import 'package:shared/ui/app_scroll_behavior.dart';

//import 'demo.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  static String _pkg = "parallax_travel_cards_list";
  static String? get pkg {
    return Env.getPackage(_pkg);
  }

  @override
  Widget build(BuildContext context) {
    //controla la orientacion de la pantalla
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, //orientacion vertical derecho
      DeviceOrientation.portraitUp, //orientacion vertical volteado
    ]);

    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Hero Travel Card',
      theme: ThemeData(brightness: Brightness.light),
      home: HeroCardDemo(),
    );
  }
}
