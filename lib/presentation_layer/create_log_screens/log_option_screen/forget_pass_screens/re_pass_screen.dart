import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/create_log_screens/login_screen/login_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/bottom_nav_bars/next_bottom_nav_bar.dart';
import 'package:book_station/presentation_layer/widgets/field_box/custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';

class RePassScreen extends StatefulWidget {
  const RePassScreen({Key? key}) : super(key: key);

  @override
  _RePassScreenState createState() => _RePassScreenState();
}

class _RePassScreenState extends State<RePassScreen> {
  TextFormValidator textFormValidator = TextFormValidator();
  late FocusNode myFocusNode;
  TextEditingController passTextController = TextEditingController(text: "");
  TextEditingController reConfirmTextController =
      TextEditingController(text: "");
  bool validPassVisibility = false, validRePassVisibility = false;
  bool validPass = false, validRePass = false;
  Color validPassColor = Colors.black54, validRePassColor = Colors.black54;
  String validPassText = "Un valid ", validRePassText = "Un valid ";

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar:const NormalAppBar(haveLeading: true),
      bottomNavigationBar: NextBottomNavBar(
        nextOnPress: nextOnPress,
        predicate: true,
        validators: [validRePass,validPass],
        width: width,
        height: height,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: height * 0.002, horizontal: width * 0.05),
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IntroText(
              textColor: MyColors.black,
              height: height * 0.03,
              alignment: Alignment.centerLeft,
              text: "Enter password",
            ),
            SizedBox(
              height: height*0.025,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter new password",
                textAlign:TextAlign.left,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: height*0.02
                ),
              ),
            ),
            SizedBox(
              height: height*0.02,
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
    Navigator.of(context).push(CustomPageRoute(
        child:
        const LoginScreen(fromCreateScreenOrNot: true),
        direction: AxisDirection.up));
  }
}
