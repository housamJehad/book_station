import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/see_more_screen.dart';
import 'package:book_station/presentation_layer/shimmers/shimmers_widget.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/author_description_widgets/author_avatar.dart';
import 'package:book_station/presentation_layer/widgets/text/container_header.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForYouTab extends StatefulWidget {
  const ForYouTab({Key? key}) : super(key: key);

  @override
  _ForYouTabState createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {
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
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // author avatar
            SizedBox(
              height: height * 0.012,
            ),
             Visibility(
                visible: isLoading,
                child: BookSelectorShimmer.rectangle(
                    width: width * 0.8,
                    height: height * 0.04,
                    radius: 3),
              ),

            Visibility(
              visible: !isLoading,
              child: Padding(
                padding:
                    EdgeInsets.only(left: width * 0.03, bottom: height * 0.01),
                child: InformationText(
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  fontColor: MyColors.black,
                  fontSize: height * 0.025,
                  text: "Recommended Author",
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: width * 0.03, bottom: height * 0.01),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:isLoading
                      ? listGeneration.getShimmersCircle(
                      width * 0.18,
                      height * 0.1,
                      BooksCategories().recommendationBookNames2,
                      80
                  ): [
                    AuthorAvatar(
                      author: BooksCategories().readerPicks1[0].bookAuthor,
                    ),
                    AuthorAvatar(
                      author: BooksCategories().readerPicks1[1].bookAuthor,
                    ),
                    AuthorAvatar(
                      author: BooksCategories().readerPicks1[2].bookAuthor,
                    ),
                    AuthorAvatar(
                      author: BooksCategories().readerPicks2[0].bookAuthor,
                    ),
                    AuthorAvatar(
                      author: BooksCategories().readerPicks2[1].bookAuthor,
                    ),
                    AuthorAvatar(
                      author: BooksCategories().readerPicks2[2].bookAuthor,
                    ),
                  ],
                ),
              ),
            ),

            //  RecommendationBook
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Visibility(
                        visible: isLoading,
                        child: BookSelectorShimmer.rectangle(
                            width: width * 0.8,
                            height: height * 0.04,
                            radius: 3),
                      ),
                    ),
                    Visibility(
                      visible: !isLoading,
                      child: ContainerHeader(
                          width: width,
                          height: height,
                          pref: "For you",
                          suffix: "Change",
                          suffixVisibility: true,
                          prefOnPress: (){},
                          suffixIcon: FontAwesomeIcons.repeat),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: isLoading
                            ? listGeneration.getShimmers(
                                width * 0.18,
                                height * 0.1,
                                BooksCategories().recommendationBookNames1)
                            : listGeneration.getRecommendationBook(
                                width * 0.18, height, BooksCategories().forYou),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: isLoading
                              ? listGeneration.getShimmers(
                                  width * 0.18,
                                  height * 0.1,
                                  BooksCategories().recommendationBookNames2)
                              : listGeneration.getRecommendationBook(
                                  width * 0.18,
                                  height,
                                  BooksCategories().forYou2)),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            //preference
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.005),
                        child: isLoading
                            ? BookSelectorShimmer.rectangle(
                                width: width * 0.6,
                                height: height * 0.04,
                                radius: 3)
                            : Text(
                                "From your reading preference",
                                style: TextStyle(
                                    color: MyColors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: height * 0.025),
                              ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03, vertical: height * 0.005),
                        child: isLoading
                            ? BookSelectorShimmer.rectangle(
                                width: width * 0.8,
                                height: height * 0.06,
                                radius: 3)
                            : Text(
                                "Recommended based on your reading history",
                                maxLines: 2,
                                style: TextStyle(
                                    color: MyColors.black,
                                    letterSpacing: 1,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: height * 0.025),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                      child: SizedBox(
                        width: width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: isLoading
                                ? listGeneration.getShimmers(
                                    width * 0.18,
                                    height * 0.1,
                                    BooksCategories().recommendationBookNames3)
                                : listGeneration.getRecommendationBook(
                                    width * 0.18,
                                    height,
                                    BooksCategories().readingPreference),
                          ),
                        ),
                      ),
                    ),
                  ]),
                )),

            SizedBox(
              height: height * 0.03,
            ),
            //Reader
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Visibility(
                          visible: isLoading,
                          child: BookSelectorShimmer.rectangle(
                              width: width * 0.8,
                              height: height * 0.04,
                              radius: 3),
                        ),
                      ),
                      Visibility(
                        visible: !isLoading,
                        child: ContainerHeader(
                            width: width,
                            height: height,
                            pref: "Reader Picks",
                            suffix: "Change",
                            suffixVisibility: true,
                            prefOnPress: (){},
                            suffixIcon: FontAwesomeIcons.repeat),
                      ),
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: isLoading
                                ? listGeneration.getShimmers(
                                    width * 0.25,
                                    height * 0.15,
                                    BooksCategories().readerBooksNames1)
                                : listGeneration.getReaderBook(width * 0.25,
                                    height, BooksCategories().readerPicks1)),
                      ),
                      SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: isLoading
                                ? listGeneration.getShimmers(
                                    width * 0.25,
                                    height * 0.15,
                                    BooksCategories().readerBooksNames2)
                                : listGeneration.getReaderBook(width * 0.25,
                                    height, BooksCategories().readerPicks2)),
                      ),
                    ],
                  ),
                )),

            SizedBox(
              height: height * 0.03,
            ),
            //Ranking
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Visibility(
                          visible: isLoading,
                          child: BookSelectorShimmer.rectangle(
                              width: width * 0.8,
                              height: height * 0.04,
                              radius: 3),
                        ),
                      ),
                      Visibility(
                        visible: !isLoading,
                        child: ContainerHeader(
                            width: width,
                            height: height,
                            pref: "Ranking",
                            suffix: "More",
                            suffixVisibility: true,
                            suffixIcon: Icons.navigate_next,
                             prefOnPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SeeMoreScreen(
                                            appBarTitle: "Ranking",
                                            books: listGeneration.transformRankBook(BooksCategories().rankingBook8,BooksCategories().rankingBooks9))));
                              },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: SizedBox(
                          width: width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.6,
                                  margin: EdgeInsets.only(
                                      right: width * 0.01,
                                      bottom: height * 0.01),
                                  // color: MyColors.hardGreen,
                                  child: Column(
                                      children: isLoading
                                          ? listGeneration.getShimmers(
                                              width * 0.6, height * 0.1, {
                                              "1": "",
                                              "2": "",
                                              "3": "",
                                              "4": "",
                                              "5": "",
                                              "6": "",
                                            })
                                          : listGeneration.getRankBook(
                                              width,
                                              height,
                                              BooksCategories().rankingBook8)),
                                ),
                                Container(
                                  width: width * 0.6,
                                  margin: EdgeInsets.only(
                                      right: width * 0.01,
                                      bottom: height * 0.01),
                                  // color: MyColors.hardGreen,
                                  child: Column(
                                      children: isLoading
                                          ? listGeneration.getShimmers(
                                              width * 0.6, height * 0.1, {
                                              "1": "",
                                              "2": "",
                                              "3": "",
                                              "4": "",
                                              "5": "",
                                              "6": "",
                                            })
                                          : listGeneration.getRankBook(
                                              width,
                                              height,
                                              BooksCategories().rankingBooks9)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),

            // also like section
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Visibility(
                          visible: isLoading,
                          child: BookSelectorShimmer.rectangle(
                              width: width * 0.8,
                              height: height * 0.04,
                              radius: 3),
                        ),
                      ),
                      Visibility(
                          visible: !isLoading,
                          child: ContainerHeader(
                              width: width,
                              height: height,
                              pref: "You may also like",
                              suffix: "More",
                              suffixVisibility: true,
                              prefOnPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SeeMoreScreen(
                                            appBarTitle: "Also like books",
                                            books:BooksCategories().alsoLikeBookForYou)));
                              },
                              suffixIcon: Icons.navigate_next)),
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
                              : listGeneration.getAlsoLike(width, height,
                                  BooksCategories().alsoLikeBookForYou),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

}

class ReadersBook extends StatelessWidget {
  const ReadersBook({
    Key? key,
    required this.width,
    required this.height,
    required this.book,
  }) : super(key: key);

  final double width;
  final double height;
  final Book book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BookDescriptionScreen(book: book)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        width: width,
        height: height * 0.25,
        child: Column(
          children: [
            Container(
              height: height * 0.18,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(book.bookPhoto), fit: BoxFit.cover)),
            ),
            Text(
              book.bookName,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: MyColors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  overflow: TextOverflow.ellipsis,
                  fontSize: height * 0.02),
            )
          ],
        ),
      ),
    );
  }
}
