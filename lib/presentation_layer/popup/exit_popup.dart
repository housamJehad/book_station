import 'dart:io';

import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ExitPopUp extends StatelessWidget {
  const ExitPopUp({Key? key}) : super(key: key);

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
      onWillPop: ()async{
        return false;
      },
     child:  Container(
              width: width * 0.8,
              height: height * 0.195,
              padding:  EdgeInsets.symmetric(horizontal: 10, vertical: height*0.01),
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
                        margin:const EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                        child: IntroText(
                          textColor: MyColors.black,
                          height: height*0.025,
                          alignment: Alignment.centerLeft,
                          text: "Exit alert",
                        )
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                      child: FittedBox(
                        child: Text("Are you sure to exit the app",
                          textAlign:TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            letterSpacing: 1,
                            color: MyColors.black,
                            fontSize: height*0.02,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Container(
                          height: height*0.08,
                          margin:const EdgeInsets.symmetric(horizontal: 5),
                          child:TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
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
                       Container(
                          height: height*0.08,
                          margin:const EdgeInsets.symmetric(horizontal: 5),
                          child: TextButton(
                            onPressed: (){
                                if (Platform.isAndroid) {
                                  SystemNavigator.pop();
                                } else if (Platform.isIOS) {
                                  exit(0);
                                }
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

    );
  }
}
