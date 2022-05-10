import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/author_description_screen.dart';
import 'package:flutter/material.dart';
class AuthorAvatar extends StatelessWidget {
  const AuthorAvatar(
      {Key? key, required this.author})
      : super(key: key);
  final Author author;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>AuthorDescriptionScreen(author: author)));
      },
      child: SizedBox(
        height: height * 0.13,
        width: width * 0.27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(author.authorPhoto),
                    radius: width * 0.09,
                  )),
            ),
            Expanded(
              flex: 1,
              child: Text(
                author.authorName,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: MyColors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}