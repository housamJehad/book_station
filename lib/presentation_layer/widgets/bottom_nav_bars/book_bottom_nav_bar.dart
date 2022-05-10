import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/author_description_screen.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';
class BookBottomNavBar extends StatelessWidget {
  const BookBottomNavBar({
    Key? key,
    required this.height,
    required this.width,
    required this.author,
  }) : super(key: key);

  final double height;
  final double width;
  final Author author;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.1,
      padding: EdgeInsets.symmetric(vertical: height*0.02,horizontal: width*0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: height*0.06,width: width*0.25,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>AuthorDescriptionScreen(author: author))
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: MyColors.black
              ),
              child: InformationText(textAlign: TextAlign.center,fontSize: height*0.02, maxLines: 1, text: "Author", fontWeight: FontWeight.bold, fontColor: MyColors.white),
            ),
          ),
          SizedBox(height: height*0.06,width: width*0.6,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  primary: MyColors.hardGreen
              ),
              child: InformationText(textAlign: TextAlign.center,fontSize: height*0.02, maxLines: 1, text: "Borrow", fontWeight: FontWeight.bold, fontColor: MyColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
