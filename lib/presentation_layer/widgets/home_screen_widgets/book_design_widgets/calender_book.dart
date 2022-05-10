import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class CalendarBook extends StatelessWidget {
  const CalendarBook({
    Key? key,
    required this.width,
    required this.height, required this.book, required this.remainingDay, required this.remainingPercentages, required this.code,
  }) : super(key: key);

  final double width;
  final double height;
  final Book book;
  final int remainingDay;
  final double remainingPercentages;
  final String code;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>BookDescriptionScreen(book: book)));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: height*0.02),
        padding: EdgeInsets.symmetric(horizontal: width*0.01),
        height: height*0.2,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(book.bookPhoto),
                          fit: BoxFit.cover))),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(left: width*0.01,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InformationText(
                        fontSize: height*0.02,
                        fontColor: Colors.grey,
                        text: book.bookAuthor.authorName,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: height*0.01,),
                      InformationText(
                        fontSize: height*0.022,
                        fontColor: Colors.black,
                        text: book.bookName,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: height*0.015,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 1,child: Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.home,color: Colors.grey,size: height*0.02,))),
                          Expanded(
                            flex:15,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                child: InformationText(
                                  fontSize: height*0.02,
                                  fontColor: Colors.grey,
                                  text: ":America Memorial Library",
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*0.015,),
                      SizedBox(
                        height: height*0.05,
                        width: width,
                        child: Column(
                          children: [
                            Visibility(
                              visible: code!="",
                              child:  Align(
                                alignment: Alignment.centerLeft,
                                child: InformationText(
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  text: "Code:${code}",
                                  fontColor: MyColors.black,
                                  fontSize: height*0.022,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: code=="",
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.only(right: width*0.01),
                                      padding: EdgeInsets.symmetric(vertical: height*0.008),
                                      height: height*0.023,
                                      child: Container(
                                        height: height*0.01,
                                        width: width*0.3,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: width*0.29*remainingPercentages,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(5),
                                                color:remainingPercentages<0.5? Colors.green:
                                                remainingPercentages<0.8?Colors.orange:
                                                Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: InformationText(
                                      fontWeight: FontWeight.bold,
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      text: "${remainingDay}d Left",
                                      fontColor: MyColors.black,
                                      fontSize: height*0.022,
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
