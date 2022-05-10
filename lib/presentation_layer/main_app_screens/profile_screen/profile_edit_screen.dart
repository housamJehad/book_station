import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/text_form_validator.dart';
import 'package:book_station/presentation_layer/widgets/field_box/profile_edit_text_form_field.dart';
import 'package:book_station/presentation_layer/widgets/text/text_check.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen(
      {Key? key,
      required this.appBarTitle,
      required this.numberOfTextField,
      required this.textFieldControllers,
      required this.onPressSave,
      required this.textFieldTypes})
      : super(key: key);
  final String appBarTitle;
  final int numberOfTextField;
  final List<TextEditingController> textFieldControllers;
  final List<String> textFieldTypes;
  final VoidCallback onPressSave;

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextFormValidator textFormValidator = TextFormValidator();

  late List<bool> validFieldVisibility = [];
  late List<Color> validFieldColor = [];
  late List<String> validFieldText = [];
  late List<bool> validField = [];

  Color savePrimaryColor = Colors.black54;
  Color saveOnPrimaryColor = MyColors.gray;

  @override
  void initState() {
    for (int i = 0; i < widget.numberOfTextField; i++) {
      validFieldVisibility.add(false);
      validFieldColor.add(Colors.black54);
      validFieldText.add("Un valid");
      validField.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: MyColors.black,
            )),
        centerTitle: false,
        title: Text(
          widget.appBarTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            letterSpacing: 1,
            color: MyColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //user info edit
              SizedBox(
                child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: getBodyWidgets(width, height)),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.05,
                width: width * 0.9,
                child: ElevatedButton(
                  onPressed: checkIsReadyToSave() ? () {} : () {},
                  style: ElevatedButton.styleFrom(
                      primary: savePrimaryColor,
                      onPrimary: saveOnPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Text(
                    "Save",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(letterSpacing: 1, fontSize: height * 0.02),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool checkIsReadyToSave() {
    for (int i = 0; i < validField.length; i++) {
      if (validField[i] == false) {
        setState(() {
          savePrimaryColor = Colors.black54;
          saveOnPrimaryColor = Colors.grey;
        });
        return false;
      }
    }
    setState(() {
      savePrimaryColor = MyColors.hardGreen;
      saveOnPrimaryColor = MyColors.white;
    });
    return true;
  }

  List<Widget> getBodyWidgets(double width, double height) {
    List<Widget> bodyWidgets = [];

    for (int i = 0; i < widget.numberOfTextField; i++) {
      bodyWidgets.add(
        ProfileEditTextFormField(
          readOnly: false,
          limit: widget.textFieldTypes[i] == "Phone number" ? 10 : 30,
          textInputAction: widget.numberOfTextField - 1 == i
              ? TextInputAction.done
              : TextInputAction.next,
          height: height,
          textInputType: widget.textFieldTypes[i] == "Phone number"
              ? TextInputType.phone
              : TextInputType.name,
          textEditingController: widget.textFieldControllers[i],
          textFieldLabelText: widget.textFieldTypes[i],
          onChanged: widget.textFieldTypes[i] == "Name"
              ? (x) {
                  onNameChanged(widget.textFieldControllers[i].text.trim(), i);
                  return "";
                }
              : widget.textFieldTypes[i] == "Phone number"
                  ? (x) {
                      onPhoneChanged(
                          widget.textFieldControllers[i].text.trim(), i);
                      return "";
                    }
                  : widget.textFieldTypes[i] == "New Password"
                      ? (x) {
                          onPassChanged(
                              widget.textFieldControllers[i].text,
                              widget.textFieldControllers[i + 1].text,
                              i,
                              i + 1);
                          return "";
                        }
                      : widget.textFieldTypes[i] == "Re New Password"
                          ? (x) {
                              onRePassChanged(
                                  widget.textFieldControllers[i - 1].text,
                                  widget.textFieldControllers[i].text,
                                  i);
                              return "";
                            }
                          : (x) {
                              onCurrentPassChanged(
                                  widget.textFieldControllers[i].text, i);
                              return "";
                            },
        ),
      );

      bodyWidgets.add(
        Visibility(
          visible: validFieldVisibility[i],
          child: TextCheck(
              checkColor: validFieldColor[i],
              height: height,
              width: width,
              status: false,
              text: validFieldText[i]),
        ),
      );
    }
    return bodyWidgets;
  }

  onNameChanged(String text, int index) {
    String result = textFormValidator.nameValidator(text);
    if (result == "Valid name") {
      setState(() {
        validFieldVisibility[index] = true;
        validField[index] = true;
        validFieldColor[index] = MyColors.hardGreen;
        validFieldText[index] = "Valid name";
      });
    } else {
      setState(() {
        validFieldVisibility[index] = true;
        validField[index] = false;
        validFieldColor[index] = Colors.red;
        validFieldText[index] = result;
      });
    }
  }

  onPhoneChanged(String text, int index) {
    String result = textFormValidator.phoneValidator(text);
    if (result == "Valid phone number") {
      setState(() {
        validFieldVisibility[index] = true;
        validField[index] = true;
        validFieldColor[index] = MyColors.hardGreen;
        validFieldText[index] = "Valid phone number";
      });
    } else {
      setState(() {
        validFieldVisibility[index] = true;
        validField[index] = false;
        validFieldColor[index] = Colors.red;
        validFieldText[index] = result;
      });
    }
  }

  onCurrentPassChanged(String text, int passIndex) {
    String result = textFormValidator.passValidator(text);

    if (result == "Valid password") {
      setState(() {
        validFieldVisibility[passIndex] = true;
        validField[passIndex] = true;
        validFieldColor[passIndex] = MyColors.hardGreen;
        validFieldText[passIndex] = "Valid password";
      });
    } else {
      setState(() {
        validFieldVisibility[passIndex] = true;
        validField[passIndex] = false;
        validFieldColor[passIndex] = Colors.red;
        validFieldText[passIndex] = result;
      });
    }
  }

  onPassChanged(String text, String rePass, int passIndex, int rePassIndex) {
    String result = textFormValidator.passValidator(text);

    if (result == "Valid password") {
      setState(() {
        validFieldVisibility[passIndex] = true;
        validField[passIndex] = true;
        validFieldColor[passIndex] = MyColors.hardGreen;
        validFieldText[passIndex] = "Valid password";
      });
    } else {
      setState(() {
        validFieldVisibility[passIndex] = true;
        validField[passIndex] = false;
        validFieldColor[passIndex] = Colors.red;
        validFieldText[passIndex] = result;
      });
    }

    if (rePass.isNotEmpty) {
      onRePassChanged(text, rePass, rePassIndex);
    }
  }

  onRePassChanged(String pass, String rePass, int rePassIndex) {
    String result = textFormValidator.rePassValidator(pass, rePass);
    if (rePass.isEmpty) {
      setState(() {
        validFieldVisibility[rePassIndex] = false;
        validField[rePassIndex] = false;
      });
    } else if (result == "Password not match") {
      setState(() {
        validFieldVisibility[rePassIndex] = true;
        validField[rePassIndex] = false;
        validFieldColor[rePassIndex] = Colors.red;
        validFieldText[rePassIndex] = "Password not match";
      });
    } else if (result == "Password match") {
      setState(() {
        validFieldVisibility[rePassIndex] = true;
        validField[rePassIndex] = true;
        validFieldColor[rePassIndex] = MyColors.hardGreen;
        validFieldText[rePassIndex] = "Passwords match";
      });
    }
  }
}
