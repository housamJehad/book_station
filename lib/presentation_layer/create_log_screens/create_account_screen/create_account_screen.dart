import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/email_pass_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/bottom_nav_bars/next_bottom_nav_bar.dart';
import 'package:book_station/presentation_layer/widgets/field_box/custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/field_box/limited_custom_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  final bool isStudent;
  const CreateAccountScreen({Key? key, required this.isStudent})
      : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController dateTextController = TextEditingController(text: "");
  TextEditingController firstNameTextController =
      TextEditingController(text: "");
  TextEditingController secondNameTextController =
      TextEditingController(text: "");

  DateTime selectedDate = DateTime.now();
  TextFormValidator textFormValidator = TextFormValidator();
  bool isFocus = false;
  bool validDateVisibility = false,
      validFirstVisibility = false,
      validSecondVisibility = false;

  bool validDate = false, validFirst = false, validSecond = false;

  Color validDateColor = Colors.black54,
      validFirstColor = Colors.black54,
      validSecondColor = Colors.black54;

  String validDateText = "Un valid ",
      validFirstText = "Un valid ",
      validSecondText = "Un valid ";
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
    dateTextController.dispose();
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
          validDate,
        ],
        predicate: (true),
        nextOnPress: () {
          Navigator.of(context).push(CustomPageRoute(
              child: EmailPassScreen(isStudent: widget.isStudent),
              direction: AxisDirection.right));
        },
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
                  text: "Personal information",
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
                              CustomTextFormField(
                                height: height,
                                textEditingController: firstNameTextController,
                                textFieldHintText: "First Name",
                                readOnly: false,
                                autoFocus: false,
                                onTap: () {},
                                havePrefix: false,
                                textInputType: TextInputType.text,
                                onComplete: (s) {
                                  onFirstNameChanged(firstNameTextController.text);
                                  return "";
                                },
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Visibility(
                                visible: validFirstVisibility,
                                child: TextCheck(
                                    height: height,
                                    width: width,
                                    status: false,
                                    checkColor: validFirstColor,
                                    text: validFirstText),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              CustomTextFormField(
                                height: height,
                                textEditingController: secondNameTextController,
                                textFieldHintText: "Second Name",
                                readOnly: false,
                                autoFocus: false,
                                onTap: () {},
                                havePrefix: false,
                                textInputType: TextInputType.text,
                                onComplete: (s) {
                                  onSecondNameChanged(secondNameTextController.text);
                                  return "";
                                },
                                textInputAction: TextInputAction.next,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Visibility(
                                visible: validSecondVisibility,
                                child: TextCheck(
                                    height: height,
                                    width: width,
                                    status: false,
                                    checkColor: validSecondColor,
                                    text: validSecondText),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              CustomTextFormField(
                                height: height,
                                textEditingController: dateTextController,
                                textFieldHintText: "Date of birth",
                                textInputType: TextInputType.text,
                                readOnly: true,
                                autoFocus: false,
                                havePrefix: false,
                                onTap: () => _selectDate(context),
                                onComplete: (s) {
                                  onDateChanged(dateTextController.text);
                                  return "";
                                },
                                textInputAction: TextInputAction.done,
                              ),
                              SizedBox(
                                height: height * 0.008,
                              ),
                              Visibility(
                                visible: validDateVisibility,
                                child: TextCheck(
                                    height: height,
                                    width: width,
                                    status: false,
                                    checkColor: validDateColor,
                                    text: validDateText),
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: MyColors.hardGreen, // header background color
              onPrimary: MyColors.white, // header text color
              onSurface: MyColors.black, // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: MyColors.hardGreen, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        dateTextController.text = picked.toString().substring(0, 11);
        selectedDate = picked;
        onDateChanged(dateTextController.text);
      });
    }
  }

  onDateChanged(String text) {
    String result = textFormValidator.dateValidator(text);
    if (result == "Valid birth date") {
      setState(() {
        validDateVisibility = true;
        validDate = true;
        validDateColor = MyColors.hardGreen;
        validDateText = "Valid birth date";
      });
    } else {
      setState(() {
        validDateVisibility = true;
        validDate = false;
        validDateColor = Colors.red;
        validDateText = result;
      });
    }
  }

  onFirstNameChanged(String text) {
    String result = textFormValidator.nameValidator(text);
    if (result == "Valid name") {
      setState(() {
        validFirstVisibility = true;
        validFirst = true;
        validFirstColor = MyColors.hardGreen;
        validFirstText = "Valid name";
      });
    } else {
      setState(() {
        validFirstVisibility = true;
        validFirst = false;
        validFirstColor = Colors.red;
        validFirstText = result;
      });
    }
  }

  onSecondNameChanged(String text) {
    String result = textFormValidator.nameValidator(text);
    if (result == "Valid name") {
      setState(() {
        validSecondVisibility = true;
        validSecond = true;
        validSecondColor = MyColors.hardGreen;
        validSecondText = "Valid name";
      });
    } else {
      setState(() {
        validSecondVisibility = true;
        validSecond = false;
        validSecondColor = Colors.red;
        validSecondText = result;
      });
    }
  }
}
