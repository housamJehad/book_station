import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/create_account_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/universitie_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/buttons/custom_elevated_button.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/buttons/small_custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen(
      {Key? key,
      required this.svgPhoto,
      required this.firstType,
      required this.secondType,
      required this.firstIcon,
      required this.secondIcon,
      required this.introText,
      required this.type, required this.isStd})
      : super(key: key);
  final String svgPhoto, firstType, secondType, introText, type;
  final IconData firstIcon, secondIcon;
  final bool isStd;
  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  Color firstTypeColor = MyColors.black;
  Color secondTypeColor = MyColors.black;
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:const NormalAppBar(haveLeading: true),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: MyColors.gray, width: width * 0.002))),
        height: height * 0.1,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmallCustomElevatedButton(
              buttonText: "Next",
              buttonTextSize: height * 0.025,
              buttonColor: firstTypeColor == MyColors.hardGreen ||
                      secondTypeColor == MyColors.hardGreen
                  ? MyColors.hardGreen
                  : Colors.black38,
              buttonIcon: Icons.navigate_next,
              buttonOnPress: widget.type == "user"
                  ? () {
                //student//
                   if(firstTypeColor == MyColors.hardGreen ){
                     Navigator.of(context).push(CustomPageRoute(
                         child: const UniversitiesScreen(),
                         direction: AxisDirection.right));
                   }
                   if(secondTypeColor == MyColors.hardGreen){
                     Navigator.of(context).push(CustomPageRoute(
                         child: const UserTypeScreen(
                             svgPhoto:
                             "assets/images/undraw_people_re_8spw.svg",
                             firstType: "Male",
                             secondType: "Female",
                             isStd: false,
                             firstIcon: FontAwesomeIcons.mars,
                             secondIcon: FontAwesomeIcons.venus,
                             introText: "Please select your gender",
                             type: "gender"),
                         direction: AxisDirection.right));
                   } else {}


               }//normal
                  : () {
                      if (firstTypeColor == MyColors.hardGreen ||
                          secondTypeColor == MyColors.hardGreen) {
                        Navigator.of(context).push(CustomPageRoute(
                            child:  CreateAccountScreen(isStudent: widget.isStd),
                            direction: AxisDirection.right));
                      }else{

                      }
                    },
              width: width * 0.25,
              height: height * 0.055,
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.white,
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: height * 0.002, horizontal: width * 0.1),
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: IntroText(
                  textColor: MyColors.black,
                  height: height * 0.025,
                  alignment: Alignment.center,
                  text: widget.introText,
                ),
              ),
            ),
            Expanded(
                flex: 9,
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.05,
                        ),
                        SizedBox(
                          width: width * 0.8,
                          height: height * 0.35,
                          child: SvgPicture.asset(widget.svgPhoto),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomElevatedButton(
                            buttonText: widget.firstType,
                            buttonIcon: widget.firstIcon,
                            buttonOnPress: () {
                              setState(() {
                                firstTypeColor = MyColors.hardGreen;
                                secondTypeColor = MyColors.black;
                              });
                            },
                            buttonColor: firstTypeColor),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomElevatedButton(
                            buttonText: widget.secondType,
                            buttonIcon: widget.secondIcon,
                            buttonOnPress: () {
                              setState(() {
                                firstTypeColor = MyColors.black;
                                secondTypeColor = MyColors.hardGreen;
                              });
                            },
                            buttonColor: secondTypeColor),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
