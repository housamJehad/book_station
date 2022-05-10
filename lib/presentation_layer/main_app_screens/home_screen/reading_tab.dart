import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/see_more_screen.dart';
import 'package:book_station/presentation_layer/shimmers/shimmers_widget.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/daily_recommendation.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class ReadingTab extends StatefulWidget {
  const ReadingTab({
    Key? key,
  }) : super(key: key);

  @override
  State<ReadingTab> createState() => _ReadingTabState();
}

class _ReadingTabState extends State<ReadingTab> {
  bool isLoading = false;
  ListGeneration listGeneration = ListGeneration();

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future loadData() async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }
    await Future.delayed(const Duration(seconds: 2), () {});
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
                visible: isLoading,
                child: RectangleShimmer.rectangle(height: height * 0.11)),
            Visibility(
              visible: !isLoading,
              child: DailyRecommendation(
                  width: width,
                  height: height,
                  book: BooksCategories().rankingBook8[0].book,
                  ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InformationText(
                    fontColor: MyColors.black,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.bold,
                    text: "Recent Borrow",
                    fontSize: height * 0.022,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeeMoreScreen(
                                  appBarTitle: "Borrowed Books",
                                  books: BooksCategories().recentReadBooks)));
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.015),
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      width: width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: isLoading
                              ? listGeneration.getShimmers(
                                  width * 0.18,
                                  height * 0.1,
                                  BooksCategories().recommendationBookNames1)
                              : listGeneration.getRecommendationBook(
                                  width * 0.18,
                                  height,
                                  BooksCategories().recentReadBooks),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InformationText(
                    fontColor: MyColors.black,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.bold,
                    text: "History",
                    fontSize: height * 0.022,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeeMoreScreen(
                                  appBarTitle: "History Books",
                                  books: BooksCategories().recentReadBooks2)));
                    },                    child: InformationText(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.015),
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      width: width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: isLoading
                              ? listGeneration.getShimmers(
                                  width * 0.18,
                                  height * 0.1,
                                  BooksCategories().recommendationBookNames1)
                              : listGeneration.getRecommendationBook(
                                  width * 0.18,
                                  height,
                                  BooksCategories().recentReadBooks2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InformationText(
                    fontColor: MyColors.black,
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.bold,
                    text: "Favorite Book",
                    fontSize: height * 0.022,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeeMoreScreen(
                                  appBarTitle: "Favorite Books",
                                  books: BooksCategories().favoriteBook)));
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
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: isLoading
                          ? listGeneration
                              .getShimmers(width * 0.85, height * 0.14, {
                              "1": "",
                              "2": "",
                              "3": "",
                              "4": "",
                              "5": "",
                              "6": "",
                              "7": "",
                              "8": "",
                              "9": "",
                            })
                          : listGeneration.getAlsoLike(
                              width, height, BooksCategories().favoriteBook),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getInterestShimmer(double width, double height) {
    List<Widget> interestShimmerWidget = [];

    for (int i = 0; i < 9; i++) {
      interestShimmerWidget.add(BookSelectorShimmer.rectangle(
        height: height * 0.15,
        width: width * 0.4,
        radius: 8,
      ));
    }

    return interestShimmerWidget;
  }
}
