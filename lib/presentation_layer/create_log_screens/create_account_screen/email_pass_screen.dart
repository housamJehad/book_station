import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/popup/verify_phone_pupup.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/bottom_nav_bars/next_bottom_nav_bar.dart';
import 'package:book_station/presentation_layer/widgets/field_box/custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/field_box/limited_custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';

class EmailPassScreen extends StatefulWidget {
  const EmailPassScreen(
      {Key? key, required this.isStudent})
      : super(key: key);
  final bool isStudent;
  @override
  _EmailPassScreenState createState() => _EmailPassScreenState();
}

class _EmailPassScreenState extends State<EmailPassScreen> {
  TextEditingController passTextController = TextEditingController(text: "");
  TextEditingController phoneTextController = TextEditingController(text: "");
  TextEditingController reConfirmTextController =   TextEditingController(text: "");
  TextEditingController userNameTextController =
  TextEditingController(text: "");
  TextEditingController stdNumTextController = TextEditingController(text: "");

  DateTime selectedDate = DateTime.now();
  TextFormValidator textFormValidator = TextFormValidator();
  bool isFocus = false;
  bool
      validPassVisibility = false,
      validPhoneVisibility = false,
      validRePassVisibility = false,
      validStdNumVisibility = false,
      validUserNameVisibility = false;

  bool validStdNum = false,
      validUserName = false,
      validPass = false,
      validRePass = false,
  validPhone = false;

  Color
      validPassColor = Colors.black54,
      validPhoneColor = Colors.black54,
      validStdNumColor = Colors.black54,
      validUserNameColor = Colors.black54,
  validRePassColor = Colors.black54;

  String
      validPassText = "Un valid ",
      validPhoneText = "Un valid",
      validUserNameText = "Un valid",
      validStdNumText = "Un valid",
      validRePassText = "Un valid ";

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    reConfirmTextController.dispose();
    passTextController.dispose();
    phoneTextController.dispose();
    userNameTextController.dispose();
    stdNumTextController.dispose();
    super.dispose();
  }

  late FocusNode myFocusNode;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const NormalAppBar(haveLeading: true),
      bottomNavigationBar: NextBottomNavBar(
        width: width,
        height: height,
        validators: [
          validPass,
          validRePass,
          validPhone,
        ],
        predicate: (validUserName||validStdNum),
        nextOnPress: nextOnPress,
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
                  text: "New account info",
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
                        Form(
                          child: Column(
                            children: [
                              SizedBox(
                                height: isFocus ? height * 0.01 : height * 0.19,
                              ),
                              Visibility(
                                visible: !widget.isStudent,
                                child: LimitedCustomTextFormField(
                                  limit: 15,
                                  textInputType: TextInputType.text,
                                  textEditingController: userNameTextController,
                                  height: height,
                                  textFieldHintText: "Username",
                                  focusNode: myFocusNode,
                                  readOnly: false,
                                  autoFocus: false,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (x) {
                                    onUserNameChanged(
                                        userNameTextController.text);
                                    return "";
                                  },
                                ),
                              ),
                              Visibility(
                                visible: validUserNameVisibility &&
                                    !widget.isStudent,
                                child: TextCheck(
                                    checkColor: validUserNameColor,
                                    height: height,
                                    width: width,
                                    status: false,
                                    text: validUserNameText),
                              ),
                              Visibility(
                                visible: widget.isStudent,
                                child: LimitedCustomTextFormField(
                                  height: height,
                                  textEditingController: stdNumTextController,
                                  textFieldHintText: "Student number",
                                  readOnly: false,
                                  autoFocus: false,
                                  limit: 11,
                                  textInputType: TextInputType.number,
                                  onChanged: (x) {
                                    onStdChanged(stdNumTextController.text);
                                    return "";
                                  },
                                  textInputAction: TextInputAction.next,
                                  focusNode: myFocusNode,
                                ),
                              ),

                              Visibility(
                                visible:
                                validStdNumVisibility && widget.isStudent,
                                child: TextCheck(
                                    checkColor: validStdNumColor,
                                    height: height,
                                    width: width,
                                    status: false,
                                    text: validStdNumText),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              CustomTextFormField(
                                height: height,
                                textEditingController: phoneTextController,
                                textFieldHintText: "Phone number",
                                textInputType: TextInputType.number,
                                readOnly: false,
                                autoFocus: false,
                                onTap: () {},
                                havePrefix: false,
                                onComplete: (s) {
                                  onPhoneChanged(
                                      phoneTextController.text.trim());
                                  return "";
                                },
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Visibility(
                                visible: validPhoneVisibility,
                                child: TextCheck(
                                    height: height,
                                    width: width,
                                    status: false,
                                    checkColor: validPhoneColor,
                                    text: validPhoneText),
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
                                  onPassChanged(passTextController.text,
                                      reConfirmTextController.text);
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
                              const SizedBox(
                                height: 7,
                              ),
                              CustomTextFormField(
                                height: height,
                                textEditingController: reConfirmTextController,
                                textFieldHintText: "Re password",
                                readOnly: false,
                                autoFocus: false,
                                havePrefix: false,
                                textInputType: TextInputType.text,
                                onTap: () {},
                                onComplete: (s) {
                                  onRePassChanged(passTextController.text,
                                      reConfirmTextController.text);
                                  return "";
                                },
                                textInputAction: TextInputAction.done,
                              ),
                              SizedBox(
                                height: height * 0.008,
                              ),
                              Visibility(
                                visible: validRePassVisibility,
                                child: TextCheck(
                                    height: height,
                                    width: width,
                                    status: false,
                                    checkColor: validRePassColor,
                                    text: validRePassText),
                              ),
                              SizedBox(
                                height: height * 0.025,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  onPassChanged(String text, String rePass) {
    String result = textFormValidator.passValidator(text);

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

    if (rePass.isNotEmpty) {
      onRePassChanged(text, rePass);
    }
  }

  onRePassChanged(String pass, String rePass) {
    String result = textFormValidator.rePassValidator(pass, rePass);
    if (rePass.isEmpty) {
      setState(() {
        validRePassVisibility = false;
        validRePass = false;
      });
    } else if (result == "Password not match") {
      setState(() {
        validRePassVisibility = true;
        validRePass = false;
        validRePassColor = Colors.red;
        validRePassText = "Password not match";
      });
    } else if (result == "Password match") {
      setState(() {
        validRePassVisibility = true;
        validRePass = true;
        validRePassColor = MyColors.hardGreen;
        validRePassText = "Password match";
      });
    }
  }

  nextOnPress() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return VerifyPopUp(
            verifyDetector:
                "+962${phoneTextController.text.substring(1, phoneTextController.text.length)}",
            nextScreen: "Log",
          );
        });
  }

  onUserNameChanged(String text) {
    String result = textFormValidator.usernameValidator(text);
    if (result == "Valid username") {
      setState(() {
        validUserNameVisibility = true;
        validUserName = true;
        validUserNameColor = MyColors.hardGreen;
        validUserNameText = "Valid username";
      });
    } else {
      setState(() {
        validUserNameVisibility = true;
        validUserName = false;
        validUserNameColor = Colors.red;
        validUserNameText = result;
      });
    }
  }

  onStdChanged(String text) {
    String result = textFormValidator.studentNumberValidator(text);
    if (result == "Valid student number") {
      setState(() {
        validStdNumVisibility = true;
        validStdNum = true;
        validStdNumColor = MyColors.hardGreen;
        validStdNumText = "Valid Student number";
      });
    } else {
      setState(() {
        validStdNumVisibility = true;
        validStdNum = false;
        validStdNumColor = Colors.red;
        validStdNumText = result;
      });
    }
  }

  onPhoneChanged(String text) {
    String result = textFormValidator.phoneValidator(text);
    if (result == "Valid phone number") {
      setState(() {
        validPhoneVisibility = true;
        validPhone = true;
        validPhoneColor = MyColors.hardGreen;
        validPhoneText = "Valid phone number";
      });
    } else {
      setState(() {
        validPhoneVisibility = true;
        validPhone = false;
        validPhoneColor = Colors.red;
        validPhoneText = result;
      });
    }
  }
}
