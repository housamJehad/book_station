import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/popup/success_borrow_popup.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/named_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/grid_views/main_grid_view.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/date_selector.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class ConfirmInformationScreen extends StatefulWidget {
  const ConfirmInformationScreen(
      {Key? key,
      required this.book,
      required this.dates,
      required this.returnDates})
      : super(key: key);
  final Book book;
  final List<String> dates;
  final List<String> returnDates;
  @override
  _ConfirmInformationScreenState createState() =>
      _ConfirmInformationScreenState();
}

class _ConfirmInformationScreenState extends State<ConfirmInformationScreen> {
  late List<Color> dateBorderColor = [];
  late List<bool> selectedDate = [];

  late List<Color> returnDateBorderColor = [];
  late List<bool> returnSelectedDate = [];

  bool successSelected = false;

  @override
  void initState() {
    for (int i = 0; i < widget.dates.length; i++) {
      dateBorderColor.add(MyColors.gray);
      selectedDate.add(false);
    }
    for (int i = 0; i < widget.returnDates.length; i++) {
      returnDateBorderColor.add(MyColors.gray);
      returnSelectedDate.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: NamedAppBar(height: height, appBarTitle: "Borrow Request"),
        bottomNavigationBar: SizedBox(
            height: height * 0.1,
            width: width,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.015, horizontal: width * 0.1),
              child: ElevatedButton(
                onPressed:successSelected?(){
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return  SuccessBorrowPopup(book: widget.book,);
                      });
                }: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: successSelected ? MyColors.hardGreen : MyColors.gray,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: height * 0.025,
                      color: MyColors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.01, horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationText(
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                    fontColor: MyColors.black,
                    fontSize: height * 0.018,
                    text: "Select the date to receive the book",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: MainGridView(
                      crossElementNumber: 2,
                      elementMarginWidth: width * 0.03,
                      gridChildren: getDateSelector(width, height),
                      elementSize: height * 0.05,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  InformationText(
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w600,
                    fontColor: MyColors.black,
                    fontSize: height * 0.018,
                    text: "Select the date to return the book",
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: MainGridView(
                      crossElementNumber: 2,
                      elementMarginWidth: width * 0.03,
                      gridChildren: getReturnDateSelector(width, height),
                      elementSize: height * 0.05,
                    ),
                  ),
                ]),
          ),
        ));
  }

  List<Widget> getDateSelector(double width, double height) {
    List<Widget> dateList = [];
    int index = 0;
    for (String element in widget.dates) {
      int val = index;
      dateList.add(DateSelector(
          date: element,
          borderColor: dateBorderColor[val],
          onTap: () {
            if (dateBorderColor[val] == MyColors.gray) {
              for (int i = 0; i < selectedDate.length; i++) {
                setState(() {
                  dateBorderColor[i] = MyColors.gray;
                });
              }
              setState(() {
                dateBorderColor[val] = MyColors.hardGreen;
                selectedDate[val] = true;
              });
            } else {
              for (int i = 0; i < selectedDate.length; i++) {
                setState(() {
                  selectedDate[i] = false;
                });
              }
              setState(() {
                dateBorderColor[val] = MyColors.gray;
              });
            }
            checkValidSelected();
          }));
      index++;
    }
    return dateList;
  }

  List<Widget> getReturnDateSelector(double width, double height) {
    List<Widget> dateList = [];
    int index = 0;
    for (String element in widget.returnDates) {
      int val = index;
      dateList.add(DateSelector(
          date: element,
          borderColor: returnDateBorderColor[val],
          onTap: () {
            if (returnDateBorderColor[val] == MyColors.gray) {
              for (int i = 0; i < returnSelectedDate.length; i++) {
                setState(() {
                  returnDateBorderColor[i] = MyColors.gray;
                });
              }
              setState(() {
                returnDateBorderColor[val] = MyColors.hardGreen;
                returnSelectedDate[val] = true;
              });
            } else {
              for (int i = 0; i < returnSelectedDate.length; i++) {
                setState(() {
                  returnSelectedDate[i] = false;
                });
              }
              setState(() {
                returnDateBorderColor[val] = MyColors.gray;
              });
            }
            checkValidSelected();
          }));
      index++;
    }
    return dateList;
  }

  void checkValidSelected() {
    bool result1 = false;
    bool result2 = false;
    for (int i = 0; i < widget.dates.length; i++) {
      if (selectedDate[i]) {
        result1 = true;
        break;
      }
    }
    for (int i = 0; i < widget.returnDates.length; i++) {
      if (returnSelectedDate[i]) {
        result2 = true;
        break;
      }
    }
    setState(() {
      successSelected = result1 && result2;
    });
  }
}
