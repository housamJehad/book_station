import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/fluro_router.dart';
import 'package:book_station/presentation_layer/lets_start_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        backgroundColor: MyColors.white,
        applyElevationOverlayColor: false
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Flurorouter.router.generator,
      home: const BookStationApp(),
    );
  }
}

class BookStationApp extends StatefulWidget {
  const BookStationApp({Key? key}) : super(key: key);

  @override
  _BookStationAppState createState() => _BookStationAppState();
}

class _BookStationAppState extends State<BookStationApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}

