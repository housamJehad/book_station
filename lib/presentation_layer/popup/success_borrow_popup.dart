import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/controller_screen/controller_screen.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:flutter/material.dart';

class SuccessBorrowPopup extends StatelessWidget {
  const SuccessBorrowPopup({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(width, height, context),
    );
  }

  Widget contentBox(double width, double height, context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: FittedBox(
        child: Container(
            width: width * 0.8,
            // height: height * 0.4,
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: height * 0.01),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.05,
                  width: width * 0.8,
                  // color: Colors.red,
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      child: IntroText(
                        textColor: MyColors.black,
                        height: height * 0.025,
                        alignment: Alignment.centerLeft,
                        text: "Success Borrow",
                      )),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    "Your request to borrow \"${book.bookName}\" successfully done please save the code under bellow and give the code to library employee to receive your book",
                    textAlign: TextAlign.left,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 1,
                      color: MyColors.black,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    "34893",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 1,
                      color: MyColors.black,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  child: Text(
                    "You can review your request status in the \"Calender Screen\"",
                    textAlign: TextAlign.left,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 1,
                      color: MyColors.black,
                      fontSize: height * 0.02,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height * 0.08,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ControllerScreen()),
                              (Route<dynamic> route) => false);
                        },
                        child: Text(
                          "Ok",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              letterSpacing: 1,
                              overflow: TextOverflow.ellipsis,
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.normal),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: MyColors.white,
                          onPrimary: MyColors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
