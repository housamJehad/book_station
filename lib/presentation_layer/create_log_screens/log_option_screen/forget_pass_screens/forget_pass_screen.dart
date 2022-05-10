import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/popup/verify_phone_pupup.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/bottom_nav_bars/next_bottom_nav_bar.dart';
import 'package:book_station/presentation_layer/widgets/field_box/limited_custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  _ForgetPassScreenState createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  TextEditingController phoneTextController = TextEditingController(text: "");
  TextFormValidator textFormValidator = TextFormValidator();
  bool validPhoneVisibility = false, validPhone = false;
  Color validPhoneColor = Colors.black54;
  String validPhoneText = "Un valid ";
  late FocusNode myFocusNode;
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
    phoneTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: const NormalAppBar(haveLeading: true),
      bottomNavigationBar: NextBottomNavBar(
        nextOnPress: nextOnPress,
        predicate: true,
        validators: [validPhone],
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
              text: "Enter phone number",
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter phone number that you sign up with it",
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(letterSpacing: 1, fontSize: height * 0.02),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            LimitedCustomTextFormField(
                height: height,
                textFieldHintText: "Phone number",
                textInputAction: TextInputAction.none,
                readOnly: false,
                focusNode: myFocusNode,
                autoFocus: false,
                textEditingController: phoneTextController,
                limit: 10,
                textInputType: TextInputType.number,
              onChanged: (s) {
                onPhoneChanged(phoneTextController.text.trim());
                return "";
              },
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
          ],
        ),
      ),
    );
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

  nextOnPress() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return VerifyPopUp(
            verifyDetector: phoneTextController.text,
            nextScreen: "RePass",
          );
        });
  }
}
