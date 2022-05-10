import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/main_app_screens/home_screen/reading_tab.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/notification_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 1);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    TextStyle tabTextStyle = TextStyle(
        fontSize: height * 0.022,
        letterSpacing: 1,
        fontWeight: FontWeight.bold);

    return DefaultTabController(
        length: 1,
        child: Scaffold(
          backgroundColor: MyColors.white,
          appBar: AppBar(
            backgroundColor: MyColors.white,
            automaticallyImplyLeading: false,
            elevation: 0,
            centerTitle: false,
            title: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text("Reading List", style: tabTextStyle),
                ),
              ],
              indicatorColor: MyColors.hardGreen,
              isScrollable: true,
              unselectedLabelColor: MyColors.black,
              labelColor: MyColors.hardGreen,
            ),
            leadingWidth: 0,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()));
                },
                icon: const Icon(Icons.search, color: MyColors.black),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                },
                icon:
                    const Icon(Icons.notifications_none, color: MyColors.black),
              ),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              ReadingTab(),
            ],
          ),
        ));
  }
}
