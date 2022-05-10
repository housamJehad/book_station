import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/named_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: NamedAppBar(height: height, appBarTitle: "Notification"),
      body: Container(
          margin: EdgeInsets.only(
              bottom: height * 0.01, right: width * 0.03, left: width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NotificationMessage(
                  height: height,
                  width: width,
                  notificationColor: Colors.green,
                  messageHeader: "Book accepted to borrow",
                  messageContent:
                      "Book with name : A Forgery Of Roses available to receive please go th the library within two days",
                ),
                NotificationMessage(
                  height: height,
                  width: width,
                  notificationColor: Colors.grey,
                  messageHeader: "Book rejected to borrow",
                  messageContent:
                      "Book with name : A Forgery Of Roses rejected to borrow please pick another one",
                ),
                NotificationMessage(
                  height: height,
                  width: width,
                  notificationColor: Colors.red,
                  messageHeader: "Book reach the limit",
                  messageContent:
                      "Book with name : A Forgery Of Roses reach the limit time from you received, please go to the library to return the book within two days",
                ),
              ],
            ),
          )),
    );
  }
}

class NotificationMessage extends StatelessWidget {
  const NotificationMessage({
    Key? key,
    required this.height,
    required this.width,
    required this.notificationColor,
    required this.messageHeader,
    required this.messageContent,
  }) : super(key: key);

  final double height;
  final double width;
  final Color notificationColor;
  final String messageHeader;
  final String messageContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.01, vertical: height * 0.005),
      decoration: BoxDecoration(
          border: Border(
              left:
                  BorderSide(color: notificationColor, width: width * 0.008))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: height * 0.08,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info,
                      color: notificationColor, size: height * 0.04),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InformationText(
                  fontSize: height * 0.02,
                  fontColor: MyColors.black,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  text: messageHeader,
                ),
                InformationText(
                  fontSize: height * 0.016,
                  fontColor: Colors.grey.shade800,
                  maxLines: 6,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                  text: messageContent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
