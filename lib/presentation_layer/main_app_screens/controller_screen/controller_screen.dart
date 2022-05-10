import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/main_app_screens/explore_screen/explore_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/featured_screen/featured_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/home_screen/home_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/profile_screen/profile_screen.dart';
import 'package:book_station/presentation_layer/popup/exit_popup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({Key? key}) : super(key: key);

  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  int whichScreen = 1;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int currentScreen = 0;
  bool isPrivate = false;
  final Color unSelectedScreenColor = MyColors.black;
  final List<Widget> _children = [
    const HomeScreen(),
    const FeaturedScreen(),
    const ExploreScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const ExitPopUp();
            });
        return true;
      },
      child: Scaffold(
          bottomNavigationBar: SizedBox(
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book_outlined), label: "Library"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.star), label: "Featured"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: "Explore"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.bookOpenReader),
                    label: "Profile"),
              ],
              backgroundColor: MyColors.white,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: whichScreen,
              unselectedItemColor: unSelectedScreenColor,
              selectedItemColor: MyColors.hardGreen,
              onTap: onScreenTapped,
            ),
          ),
          body: _children[whichScreen]),
    );
  }

  void onScreenTapped(int index) {
    setState(() {
      whichScreen = index;
    });
  }
}
