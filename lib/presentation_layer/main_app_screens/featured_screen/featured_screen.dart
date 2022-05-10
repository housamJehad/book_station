
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/main_app_screens/featured_screen/for_you_tab.dart';
import 'package:book_station/presentation_layer/main_app_screens/featured_screen/new_release_tab.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/calendar_description_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/notification_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/search_screen.dart';
import 'package:flutter/material.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.white,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
              },
              icon: const Icon(Icons.notifications_none, color: MyColors.black),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CalendarDescriptionScreen()));
              },
              icon:
                  const Icon(Icons.lock_clock, color: MyColors.black),
            ),
          ],
          centerTitle: false,
          leadingWidth: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const SearchScreen())
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: width * 0.026),
              width: width * 0.7,
              height: height * 0.04,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.01,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Icon(Icons.search,
                      size: height * 0.022, color: Colors.black38),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: height * 0.022,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        body: const FeaturedTabBar());
  }
}

class FeaturedTabBar extends StatefulWidget {
  const FeaturedTabBar({Key? key}) : super(key: key);

  @override
  _FeaturedTabBarState createState() => _FeaturedTabBarState();
}

class _FeaturedTabBarState extends State<FeaturedTabBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    TextStyle tabTextStyle = TextStyle(
        fontSize: height * 0.022,
        letterSpacing: 1,
        fontWeight: FontWeight.bold);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColors.white,
        appBar: AppBar(
          backgroundColor: MyColors.white,
          elevation: 0,
          leadingWidth: 0,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: TabBar(
            tabs: [
              Tab(
                child: Text("ForYou", style: tabTextStyle),
              ),
              Tab(
                child: Text("New release", style: tabTextStyle),
              ),
            ],
            indicatorColor: MyColors.hardGreen,
            isScrollable: true,
            unselectedLabelColor: MyColors.black,
            labelColor: MyColors.hardGreen,
          ),
        ),
        body: const TabBarView(
          children: [
            ForYouTab(),
            NewReleaseScreen(),
          ],
        ),
      ),
    );
  }
}
