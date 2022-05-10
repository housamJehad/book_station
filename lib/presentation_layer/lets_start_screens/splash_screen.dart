import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/presentation_layer/lets_start_screens/lets_start_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String animation = "assets/animation/lf30_editor_vxz6nbeq.json";

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 7)).then((value) {
      Navigator.of(context).push(CustomPageRoute(child: const LetsStartScreen(),direction: AxisDirection.up));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Lottie.asset(
                      animation,
                      width: width * 0.5,
                      repeat: true,
                      reverse: true,
                      animate: true,
                    ),
                  ),
                  Text(
                    "Book Station",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 2,
                      color: MyColors.hardGreen,
                      fontSize: height * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
