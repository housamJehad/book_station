import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/user_type_selector_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/login_screen/login_screen.dart';
import 'package:book_station/presentation_layer/popup/exit_popup.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';



import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogOptionScreen extends StatefulWidget {
  const LogOptionScreen({Key? key}) : super(key: key);


  @override
  _LogOptionScreenState createState() => _LogOptionScreenState();
}

class _LogOptionScreenState extends State<LogOptionScreen> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: ()async{
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const ExitPopUp();
            });
        return true;
      },
      child: Scaffold(
        appBar:const NormalAppBar(haveLeading: false),
        backgroundColor: MyColors.white,
        body: Container(
          width: width,
          height: height,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: MyColors.white,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: height * 0.38,
                            child: Image.asset("assets/images/sign.png")),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child:SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "we are so glade to be here with you our reader",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:  TextStyle(
                            letterSpacing: 2,
                            color: MyColors.black,
                            fontSize: height*0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                          buttonText: "Log in with email",
                          buttonColor: MyColors.hardGreen,
                          buttonIcon: Icons.email_outlined,
                          buttonOnPress: (){
                            Navigator.of(context).push(
                                CustomPageRoute(child:  const LoginScreen(fromCreateScreenOrNot: false),direction: AxisDirection.right)
                            );
                            },
                        ),
                        SizedBox(
                         height: height*0.03,
                        ),
                        CustomElevatedButton(
                            buttonText: "Create new account",
                            buttonIcon: Icons.account_circle_rounded,
                            buttonOnPress: (){  Navigator.of(context).push(
                                CustomPageRoute(child: const UserTypeScreen(
                                  firstIcon: FontAwesomeIcons.graduationCap,
                                  firstType: "Student",
                                  secondIcon: FontAwesomeIcons.userLarge,
                                  secondType: "Normal",
                                  type: "user",
                                  isStd: false,
                                  introText: "Please select your type",
                                  svgPhoto: "assets/images/undraw_decide_re_ixfw.svg",
                                ),direction: AxisDirection.right)
                            );},
                            buttonColor: MyColors.black
                        ),
                      ],
                    ),

                  )),
            ],
          ),
        ),
      ),
    );
  }
}











// import 'package:book_station/constant/my_colors.dart';
// import 'package:book_station/presentation_layer/widgets/custom_elevated_button.dart';
// import 'package:flutter/material.dart';
//
// class LofOptionScreen extends StatelessWidget {
//   const LofOptionScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: MyColors.white,
//           centerTitle: true,
//           title: const Text("Book Station",
//               style: TextStyle(
//                   color: MyColors.hardGreen,
//                   letterSpacing: 1,
//                   fontWeight: FontWeight.bold)),
//           elevation: 0,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: const Icon(Icons.arrow_back, color: Colors.black),
//           ),
//         ),
//         backgroundColor: MyColors.white,
//         body: Container(
//           width: width,
//           height: height,
//           margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//           color: MyColors.white,
//           child: Column(
//             children: [
//                 Container(
//                   color: Colors.grey,
//                   height: height*0.6,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                               height: height * 0.5,
//                               child: Image.asset("assets/images/sign.png")),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                                 "Create Account",
//                               style: TextStyle(
//                                 fontSize: height*0.03,
//                                 letterSpacing: 1,
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               "To save your reservations and library bookmarks when switching devices",
//                               maxLines: 2,
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                   fontSize: height*0.025,
//                                   color: Colors.black54,
//                                   letterSpacing: 0,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                 ),
//               Container(
//                 color: Colors.red,
//                 height: height*0.2,
//                 margin: EdgeInsets.symmetric(vertical: height*0.01),
//                 child: Container(
//                   alignment: Alignment.center,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomElevatedButton(
//                         buttonText: "Log in with email",
//                         buttonColor: MyColors.hardGreen,
//                         buttonIcon: Icons.email_outlined,
//                         buttonOnPress: (){print("log in");},
//                       ),
//                       SizedBox(
//                        height: height*0.03,
//                       ),
//                       CustomElevatedButton(
//                           buttonText: "Create new account",
//                           buttonIcon: Icons.account_circle_rounded,
//                           buttonOnPress: (){print("create");},
//                           buttonColor: MyColors.black
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
