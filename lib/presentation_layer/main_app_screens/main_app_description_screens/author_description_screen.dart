import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/author_description_widgets/row_description.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/description_container.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/related_container.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';



class AuthorDescriptionScreen extends StatefulWidget {
  const AuthorDescriptionScreen({Key? key, required this.author}) : super(key: key);
  final Author author;

  @override
  _AuthorDescriptionScreenState createState() => _AuthorDescriptionScreenState();
}

class _AuthorDescriptionScreenState extends State<AuthorDescriptionScreen> {
  ListGeneration listGeneration = ListGeneration();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
               Container(
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.author.authorPhoto),
                        fit: BoxFit.cover,
                        opacity: 0.3
                    ),
                  ),
                  child: SizedBox(
                    child:  Container(
                      decoration:BoxDecoration(color: Colors.white.withOpacity(0.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: height*0.015,left: width*0.04,right:  width*0.04),
                            width: width,
                            height: height*0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(onPressed: (){ Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,color: MyColors.black,size: height*0.035,)),
                                InformationText(textAlign: TextAlign.start,fontSize: height*0.025, maxLines: 1, text: "Author Details", fontWeight: FontWeight.bold, fontColor: MyColors.black),
                                SizedBox(width: width*0.1,),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height*0.2,
                                  width: width*0.35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(widget.author.authorPhoto),
                                        fit: BoxFit.contain,
                                      )
                                  ),
                                ),
                                SizedBox(height: height*0.01,),
                                SizedBox(
                                    width: width*0.4,
                                    child: InformationText(
                                        textAlign: TextAlign.center,
                                        fontSize: height*0.02,
                                        maxLines: 3,
                                        text:widget.author.authorName,
                                        fontWeight: FontWeight.bold,
                                        fontColor: MyColors.black
                                    )
                                ),
                                SizedBox(
                                  height: height*0.023,
                                ),
                                RowDescription(
                                  height: height,
                                  width: width,
                                  containerColor: Colors.black.withOpacity(0.4),
                                  containerWidth: width*0.9,
                                  textColor: MyColors.white,
                                  mainText1: "Books",
                                  mainText2: "Genres",
                                  mainText3: "Languages",
                                  mainDescription1: "15",
                                  mainDescription2: "4",
                                  mainDescription3: "Eng",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               SizedBox(
                  width: width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height*0.01,
                      ),
                      DescriptionContainer(height: height, width: width,description: widget.author.authorDescription),
                      RelatedContainer(height: height, width: width, listGeneration: listGeneration,relatedText: "Author Books",)
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
