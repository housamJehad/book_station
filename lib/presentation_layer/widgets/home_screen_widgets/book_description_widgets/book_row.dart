import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/book_description_screens/book_description_scereen.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';



class BookRow extends StatelessWidget {
  const BookRow({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>BookDescriptionScreen(book: book))
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height*0.01),
        width: width,
        height: height*0.1,
        child: Padding(
          padding: EdgeInsets.only(left: width*0.02),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.black,
                    image: DecorationImage(
                      image: AssetImage(book.bookPhoto),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding:EdgeInsets.only(left: width*0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InformationText(
                        fontSize: height*0.02,
                        fontColor: MyColors.black,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        text: book.bookName,
                      ),
                      SizedBox(height: height*0.01,),
                      InformationText(
                        fontSize: height*0.016,
                        fontColor:Colors.grey.shade800,
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        fontWeight: FontWeight.bold,
                        text: "Book",
                      ),
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
