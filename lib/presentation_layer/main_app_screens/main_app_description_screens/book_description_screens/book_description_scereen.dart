import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/confirm_information_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/pdf_viewer_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/calendar_description_screen.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/author_clickable_text.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/book_option_button.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/book_row_description.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/description_container.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/related_container.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class BookDescriptionScreen extends StatefulWidget {
  const BookDescriptionScreen({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  _BookDescriptionScreenState createState() => _BookDescriptionScreenState();
}

class _BookDescriptionScreenState extends State<BookDescriptionScreen> {
  late ScrollController scrollController;
  ListGeneration listGeneration = ListGeneration();

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: MyColors.black),
        ),
        title: InformationText(
          textAlign: TextAlign.start,
          fontWeight: FontWeight.bold,
          maxLines: 1,
          text: "Book Details",
          fontColor: MyColors.black,
          fontSize: height * 0.025,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border,
                  color: MyColors.black, size: height * 0.035)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CalendarDescriptionScreen()));
              },
              icon: Icon(Icons.lock_clock,
                  color: MyColors.black, size: height * 0.035)),
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.22,
                margin: EdgeInsets.symmetric(
                    vertical: height * 0.01, horizontal: width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          decoration: BoxDecoration(
                              color: MyColors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(widget.book.bookPhoto),
                                  fit: BoxFit.cover))),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InformationText(
                                    fontSize: height * 0.025,
                                    fontColor: MyColors.black,
                                    text: widget.book.bookName,
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AuthorClickableText(
                                        width: width,
                                        height: height,
                                        author: widget.book.bookAuthor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Visibility(
                                        visible: widget.book.pdfUrl != "",
                                        child: Expanded(
                                          flex: 2,
                                          child: BookOptionButton(
                                            width: width,
                                            height: height,
                                            buttonText: "Read",
                                            onPress: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PdfViewerScreen(
                                                            pdfLink: widget
                                                                .book.pdfUrl,
                                                          )));
                                            },
                                            onPrimaryColor: MyColors.white,
                                            primaryColor: MyColors.black,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: BookOptionButton(
                                          width: width,
                                          height: height,
                                          buttonText: "Borrow",
                                          onPress: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ConfirmInformationScreen(
                                                          book: widget.book,
                                                          dates: const [
                                                            "Monday:9/5/2022",
                                                            "Thursday:10/5/2022"
                                                          ],
                                                          returnDates: const [
                                                            "Sunday:11/5/2022",
                                                            "Monday:12/5/2022",
                                                            "Tuesday:13/5/2022",
                                                            "Wednesday:14/5/2022",
                                                            "Thursday:15/5/2022"
                                                          ],
                                                        )));
                                          },
                                          onPrimaryColor: MyColors.white,
                                          primaryColor: MyColors.hardGreen,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BookRowDescription(
                height: height,
                width: width,
                bookGenre: widget.book.bookCategories,
                language: "Eng",
                numOfFavorite: widget.book.bookLikes,
                numOfGenres: widget.book.bookCategories.length,
              ),
              SizedBox(
                width: width,
                child: Column(
                  children: [
                    DescriptionContainer(
                        height: height,
                        width: width,
                        description: widget.book.bookDescription),
                    RelatedContainer(
                      height: height,
                      width: width,
                      listGeneration: listGeneration,
                      relatedText: "Related Books",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
