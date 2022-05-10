import 'package:book_station/main.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _bookStationApp = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
      const BookStationApp()
  );



  static void setupRouter(){
    router.define('/', handler: _bookStationApp);
  }

}
