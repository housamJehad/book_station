import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/presentation_layer/create_log_screens/log_option_screen/forget_pass_screens/re_pass_screen.dart';
import 'package:book_station/presentation_layer/create_log_screens/login_screen/login_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/buttons/small_custom_elevated_button.dart';
import 'package:book_station/presentation_layer/widgets/field_box/limited_custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen(
      {Key? key, required this.verifyDetector, required this.nextScreen})
      : super(key: key);
  final String verifyDetector;
  final String nextScreen;
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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

    super.dispose();
  }

  late FocusNode myFocusNode;
  final String otp = "815629";
  bool validOtp = false, isFocus = false;
  TextEditingController otpTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: const NormalAppBar(haveLeading: true),
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
                buttonColor: validOtp ? MyColors.hardGreen : Colors.black54,
                buttonIcon: Icons.navigate_next,
                width: width * 0.25,
                height: height * 0.055,
                buttonOnPress: widget.nextScreen == "Log"
                    ? () {
                        Navigator.of(context).push(CustomPageRoute(
                            child:
                                const LoginScreen(fromCreateScreenOrNot: true),
                            direction: AxisDirection.up));
                      }
                    : () {
                        Navigator.of(context).push(CustomPageRoute(
                            child: const RePassScreen(),
                            direction: AxisDirection.right));
                      },
              ),
            ],
          ),
        ),
        backgroundColor: MyColors.white,
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
                text: "We sent you a code",
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter it below to verify\n${widget.verifyDetector}",
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
                  textFieldHintText: "Waiting for code",
                  textInputAction: TextInputAction.none,
                  readOnly: false,
                  onChanged: (s) {
                    return "";
                  },
                  focusNode: myFocusNode,
                  autoFocus: false,
                  textEditingController: otpTextEditingController,
                  limit: 6,
                  textInputType: TextInputType.number),
              Container(
                alignment: Alignment.centerLeft,
                // color: Colors.red,
                margin: EdgeInsets.zero,
                child: InkWell(
                  onTap: () {
                    Future.delayed(const Duration(milliseconds: 800))
                        .then((value) {
                      setState(() {
                        otpTextEditingController.text = otp.toString();
                        validOtp = true;
                      });
                    });
                  },
                  child: Text(
                    "Didn't receive code?",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: height * 0.02,
                        color: MyColors.hardGreen),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
