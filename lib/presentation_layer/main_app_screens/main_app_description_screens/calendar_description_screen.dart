import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/calender_book.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class CalendarDescriptionScreen extends StatefulWidget {
  const CalendarDescriptionScreen({Key? key}) : super(key: key);

  @override
  _CalendarDescriptionScreenState createState() =>
      _CalendarDescriptionScreenState();
}

class _CalendarDescriptionScreenState extends State<CalendarDescriptionScreen> {
  late List<Book> books = [];
  @override
  void initState() {
    for (Book element in BooksCategories().books) {
      books.add(element);
    }

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
          text: "Calendar",
          fontColor: MyColors.black,
          fontSize: height * 0.025,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            bottom: height * 0.01, right: width * 0.03, left: width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalendarBook(
                width: width,
                height: height,
                book: books[0],
                remainingDay: 3,
                remainingPercentages: 3 / 7,
                code: "86548",
              ),
              CalendarBook(
                width: width,
                height: height,
                book: books[2],
                remainingDay: 4,
                remainingPercentages: 4 / 7,
                code: "",
              ),
              CalendarBook(
                width: width,
                height: height,
                book: books[1],
                remainingDay: 6,
                remainingPercentages: 6 / 7,
                code: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
