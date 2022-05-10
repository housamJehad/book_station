import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/user_type_selector_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/log_option_screen/forget_pass_screens/forget_pass_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/log_option_screen/log_option_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/login_screen/user_interest_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/controller_screen/controller_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/buttons/custom_elevated_button.dart';
import 'package:book_station/presentation_layer/widgets/field_box/custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, required this.fromCreateScreenOrNot})
      : super(key: key);
  final bool fromCreateScreenOrNot;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextController = TextEditingController(text: "");
  TextEditingController passTextController = TextEditingController(text: "");
  TextFormValidator textFormValidator = TextFormValidator();
  bool validPassVisibility = false, validEmailVisibility = false;
  bool validPass = false, validEmail = false;
  Color validPassColor = Colors.black54, validEmailColor = Colors.black54;
  String validEmailText = "Un valid ", validPassText = "Un valid ";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).push(CustomPageRoute(
            child: const LogOptionScreen(), direction: AxisDirection.right));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.white,
          centerTitle: true,
          title: const Text("Book Station",
              style: TextStyle(
                  color: MyColors.hardGreen,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold)),
          elevation: 0,
          leading: IconButton(
            onPressed: widget.fromCreateScreenOrNot
                ? () {
                    Navigator.of(context).push(CustomPageRoute(
                        child: const LogOptionScreen(),
                        direction: AxisDirection.up));
                  }
                : () {
                    Navigator.of(context).pop();
                  },
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        backgroundColor: MyColors.white,
        body: SingleChildScrollView(
          child: Container(
            margin:
                EdgeInsets.symmetric(vertical: height * 0.002, horizontal: 20),
            height: height,
            width: width,
            child: Column(
              children: [
                IntroText(
                    height: height * 0.025,
                    text: "Let's sign you in",
                    alignment: Alignment.center,
                    textColor: MyColors.black),
                SizedBox(
                  height: height * 0.006,
                ),
                SizedBox(
                  width: width * 0.8,
                  height: height * 0.38,
                  child: SvgPicture.asset(
                      "assets/images/undraw_education_f8ru.svg"),
                ),
                Form(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: height * 0.005, horizontal: width * 0.04),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          height: height,
                          textEditingController: emailTextController,
                          textFieldHintText: "Email address",
                          readOnly: false,
                          autoFocus: false,
                          onTap: () {},
                          textInputType: TextInputType.emailAddress,
                          havePrefix: false,
                          onComplete: (s) {
                            onEmailChanged(emailTextController.text.trim());
                            return "";
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Visibility(
                          visible: validEmailVisibility,
                          child: TextCheck(
                              height: height,
                              width: width,
                              status: false,
                              checkColor: validEmailColor,
                              text: validEmailText),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        CustomTextFormField(
                          height: height,
                          textEditingController: passTextController,
                          textFieldHintText: "Password",
                          readOnly: false,
                          autoFocus: false,
                          onTap: () {},
                          havePrefix: false,
                          textInputType: TextInputType.text,
                          onComplete: (s) {
                            onPassChanged(passTextController.text);
                            return "";
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Visibility(
                          visible: validPassVisibility,
                          child: TextCheck(
                              height: height,
                              width: width,
                              status: false,
                              checkColor: validPassColor,
                              text: validPassText),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                CustomElevatedButton(
                    buttonText: "Log in",
                    buttonIcon: Icons.login,
                    buttonOnPress: () {
                      Navigator.of(context).push(CustomPageRoute(
                          child: UserInterestScreen(
                            onCompleteSelect: "Let's Start",
                            genres: BooksCategories().userInterestGenres,
                            appBar: const NormalAppBar(
                              haveLeading: false,
                            ),
                            onSubmitPress: () {
                              Navigator.of(context).push(CustomPageRoute(
                                  child: const ControllerScreen(),
                                  direction: AxisDirection.right));
                            },
                          ),
                          direction: AxisDirection.up));
                    },
                    // buttonOnPress: emailTextController.text ==
                    //             "housam@gmail.com" &&
                    //         passTextController.text == "11223344A"
                    //     ? () {
                    //         Navigator.of(context).push(CustomPageRoute(
                    //             child: UserInterestScreen(
                    //               onCompleteSelect: "Let's Start",
                    //               genres: BooksCategories().userInterestGenres,
                    //               appBar: const NormalAppBar(
                    //                 haveLeading: false,
                    //               ),
                    //               onSubmitPress: () {
                    //                 Navigator.of(context).push(CustomPageRoute(
                    //                     child: const ControllerScreen(),
                    //                     direction: AxisDirection.right));
                    //               },
                    //             ),
                    //             direction: AxisDirection.up));
                    //       }
                    //     : () {},
                    buttonColor: MyColors.hardGreen),
                SizedBox(
                  height: height * 0.025,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    splashColor: MyColors.softBlue,
                    onTap: forgetPassNavigator,
                    child: Text(
                      "Forget your password",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        letterSpacing: 2,
                        color: MyColors.hardGreen,
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have account ?",
                        textAlign: TextAlign.left,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          letterSpacing: 2,
                          color: MyColors.black,
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: createAccountNavigator,
                        splashColor: MyColors.softBlue,
                        child: Text(
                          "Create one!",
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            letterSpacing: 2,
                            color: MyColors.hardGreen,
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  forgetPassNavigator() {
    Navigator.of(context).push(CustomPageRoute(
        child: const ForgetPassScreen(), direction: AxisDirection.right));
  }

  createAccountNavigator() {
    Navigator.of(context).push(CustomPageRoute(
        child: const UserTypeScreen(
          firstIcon: FontAwesomeIcons.graduationCap,
          firstType: "Student",
          secondIcon: FontAwesomeIcons.userLarge,
          secondType: "Normal",
          type: "user",
          isStd: false,
          introText: "Please select your type",
          svgPhoto: "assets/images/undraw_decide_re_ixfw.svg",
        ),
        direction: AxisDirection.right));
  }

  onEmailChanged(String text) {
    String result = textFormValidator.emailValidator(text);
    if (result == "Un valid email") {
      setState(() {
        validEmailVisibility = true;
        validEmail = false;
        validEmailColor = Colors.red;
        validEmailText = "Un valid email";
      });
    } else {
      setState(() {
        validEmailVisibility = true;
        validEmail = true;
        validEmailColor = MyColors.hardGreen;
        validEmailText = "Valid email";
      });
    }
  }

  onPassChanged(String pass) {
    String result = textFormValidator.passValidator(pass);

    if (result == "Valid password") {
      setState(() {
        validPassVisibility = true;
        validPass = true;
        validPassColor = MyColors.hardGreen;
        validPassText = "Valid password";
      });
    } else {
      setState(() {
        validPassVisibility = true;
        validPass = false;
        validPassColor = Colors.red;
        validPassText = result;
      });
    }
  }
}
