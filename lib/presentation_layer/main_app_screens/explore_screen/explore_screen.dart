import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/search_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/see_more_screen.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/explore_screen_widgets/explore_genre_selector.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late List<bool> exploreGenreStatus = [];
  List<String> genreStrings = BooksCategories().bookCategories.keys.toList();
  String mainGenreName = "";
  ListGeneration listGeneration = ListGeneration();

  late List<Book> mainGenreData;

  @override
  void initState() {
    mainGenreData = BooksCategories().newReleaseBooks;
    mainGenreName = genreStrings[0];
    for (int i = 0; i < BooksCategories().bookCategories.length; i++) {
      if (i == 0) {
        exploreGenreStatus.add(true);
      } else {
        exploreGenreStatus.add(false);
      }
    }
    super.initState();
  }

  getMainGenreData() {
    if (mainGenreName == "Technology") {
      setState(() {
        mainGenreData = BooksCategories().newReleaseBooks;
      });
    } else {
      setState(() {
        mainGenreData = BooksCategories().newReleaseBooks2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        excludeHeaderSemantics: false,
        toolbarHeight: height * 0.17,
        backgroundColor: MyColors.white,
        elevation: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: height * 0.17,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.035,
              ),
              Text(
                "Search",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: MyColors.black,
                    fontSize: height * 0.028,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                  height: height * 0.05,
                  width: width,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        primary: Colors.transparent,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: height * 0.03,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "Books,Author,Publisher,Genre",
                          style: TextStyle(
                              color: MyColors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal,
                              letterSpacing: 1,
                              fontSize: height * 0.02),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: MyColors.gray, width: width * 0.005)),
                ),
                padding: EdgeInsets.only(bottom: height * 0.008),
                child: Wrap(
                    alignment: WrapAlignment.start,
                    children: getExploreGenreSelector(
                        BooksCategories().bookCategories)),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InformationText(
                            fontColor: MyColors.black,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            text: mainGenreName,
                            fontSize: height * 0.022,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeMoreScreen(
                                          appBarTitle: mainGenreName,
                                          books: mainGenreData)));
                            },
                            child: InformationText(
                              fontColor: MyColors.hardGreen,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.bold,
                              text: "See More",
                              fontSize: height * 0.02,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisExtent: height * 0.19,
                        mainAxisSpacing: width * 0.01,
                        crossAxisSpacing: height * 0.01,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: listGeneration.getRecommendationBook(
                          width * 0.18, height, mainGenreData),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> getExploreGenreSelector(Map<String, String> genres) {
    List<Widget> exploreGenreSelectorWidget = [];

    int index = 0;
    genres.forEach((key, value) {
      int val = index;
      exploreGenreSelectorWidget.add(ExploreGenreSelector(
        genreName: key,
        isPressed: exploreGenreStatus[val],
        onTap: () {
          for (int i = 0; i < exploreGenreStatus.length; i++) {
            if (i == val) {
              setState(() {
                mainGenreName = genreStrings[i];
                exploreGenreStatus[i] = true;
                getMainGenreData();
              });
            } else {
              setState(() {
                exploreGenreStatus[i] = false;
              });
            }
          }
        },
      ));
      index += 1;
    });
    return exploreGenreSelectorWidget;
  }
}
