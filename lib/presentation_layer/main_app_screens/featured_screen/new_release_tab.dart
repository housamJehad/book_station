import 'dart:async';

import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/shimmers/shimmers_widget.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/award_book.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/award_book_info.dart';
import 'package:book_station/presentation_layer/widgets/text/container_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewReleaseScreen extends StatefulWidget {
  const NewReleaseScreen({Key? key}) : super(key: key);

  @override
  _NewReleaseScreenState createState() => _NewReleaseScreenState();
}

class _NewReleaseScreenState extends State<NewReleaseScreen> {
  ListGeneration listGeneration = ListGeneration();
  late PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  bool isLoading = false;
  List<Color> borderColors = [
    MyColors.hardGreen,
    MyColors.white,
    MyColors.white,
    MyColors.white,
    MyColors.white,
    MyColors.white,
    MyColors.white,
    MyColors.white,
  ];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Future loadData() async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }
    await Future.delayed(const Duration(seconds: 2), () {});
    pageController.addListener(() {
      if (pageController.page?.round() != currentPage) {
        if (mounted) {
          setState(() {
            currentPage = pageController.page?.round() as int;
          });
        }
      }
    });
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  late List<Widget> awardPageView;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            //Recommended section
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
                          pref: "Recommend Release",
                          suffix: "Change",
                          suffixVisibility: false,
                          prefOnPress: (){},
                          suffixIcon: FontAwesomeIcons.repeat),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: isLoading
                            ? listGeneration.getShimmers(width * 0.18,
                                height * 0.1, BooksCategories().editorBook1)
                            : listGeneration.getEditorBook(width * 0.18, height,
                                BooksCategories().recommendedRelease),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: isLoading
                              ? listGeneration.getShimmers(width * 0.18,
                                  height * 0.1, BooksCategories().editorBook1)
                              : listGeneration.getEditorBook(
                                  width * 0.18,
                                  height,
                                  BooksCategories().recommendedRelease2)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),

            //book has an award
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              pref: "Hot Release",
                              suffix: "Change",
                              suffixVisibility: false,
                              prefOnPress: (){},
                              suffixIcon: FontAwesomeIcons.repeat)),
                      SizedBox(
                        width: width,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: isLoading
                                ? listGeneration.getShimmers(
                                    width * 0.1, height * 0.065, {
                                    "1": "",
                                    "2": "",
                                    "3": "",
                                    "4": "",
                                    "5": "",
                                    "6": "",
                                    "7": ""
                                  })
                                : getAwardRowWidget(width, height,
                                    BooksCategories().hotReleaseBooks),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        height: height * 0.21,
                        padding: EdgeInsets.symmetric(vertical: height * 0.01),
                        child: PageView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            controller: pageController,
                            onPageChanged: (int index) {
                              if (mounted) {
                                for (int i = 0; i < 8; i++) {
                                  if (i == index) {
                                    setState(() {
                                      borderColors[i] = MyColors.hardGreen;
                                    });
                                  } else {
                                    setState(() {
                                      borderColors[i] = MyColors.white;
                                    });
                                  }
                                }
                              }
                            },
                            children: isLoading
                                ? listGeneration.getShimmers(
                                    width * 0.85, height * 0.15, {
                                    "1": "",
                                    "2": "",
                                    "3": "",
                                    "4": "",
                                    "5": "",
                                    "6": "",
                                    "7": ""
                                  })
                                : getAwardInfoWidget(width, height,
                                    BooksCategories().hotReleaseBooks)),
                      ),
                    ]),
              ),
            ),

            SizedBox(
              height: height * 0.03,
            ),
            //new release
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.white),
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
                            pref: "New release",
                            suffix: "Change",
                            suffixVisibility: false,
                            prefOnPress: (){},
                            suffixIcon: FontAwesomeIcons.repeat)),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: isLoading
                            ? listGeneration.getShimmers(width * 0.18,
                                height * 0.1, BooksCategories().newRelease1)
                            : listGeneration.getEditorBook(
                                width * 0.18, height, BooksCategories().newReleaseBooks),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: isLoading
                              ? listGeneration.getShimmers(width * 0.18,
                                  height * 0.1, BooksCategories().editorBook2)
                              : listGeneration.getEditorBook(width * 0.18,
                                  height, BooksCategories().newReleaseBooks2)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
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
                              pref: "Also new",
                              suffix: "More",
                              prefOnPress: (){},
                              suffixVisibility: false,
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
                                  BooksCategories().recentReadBooks2),
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

  List<Widget> getAwardRowWidget(
      double width, double height, List<Book> tempImpressionList) {
    List<Widget> awardRowList = [];
    for (int i = 0; i < tempImpressionList.length; i++) {
      awardRowList.add(AwardBook(
        width: width,
        height: height,
        borderColor: borderColors[i],
        bookPhoto: tempImpressionList[i].bookPhoto,
        index: i,
        onTap: () {
          pageController.animateToPage(
            i,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOutQuint,
          );
          for (int j = 0; j < tempImpressionList.length; j++) {
            if (mounted) {
              if (j == i) {
                setState(() {
                  borderColors[j] = MyColors.hardGreen;
                });
              } else {
                setState(() {
                  borderColors[j] = MyColors.white;
                });
              }
            }
          }
        },
      ));
    }

    return awardRowList;
  }

  List<Widget> getAwardInfoWidget(
      double width, double height, List<Book> tempImpressionList) {
    List<Widget> awardInfoList = [];
    for (int i = 0; i < tempImpressionList.length; i++) {
      awardInfoList.add(AwardBookInfo(
        width: width,
        height: height,
        book: tempImpressionList[i],
      ));
    }

    return awardInfoList;
  }
}
