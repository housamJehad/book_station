import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/main_app_screens/profile_screen/profile_edit_screen.dart';
import 'package:flutter/material.dart';
class ProfileEditBottomSheetBody extends StatefulWidget {
   const ProfileEditBottomSheetBody({Key? key}) : super(key: key);

  @override
  State<ProfileEditBottomSheetBody> createState() => _ProfileEditBottomSheetBodyState();
}

class _ProfileEditBottomSheetBodyState extends State<ProfileEditBottomSheetBody> {
  TextEditingController nameTextController = TextEditingController(text: "Housam Aldeen Jehad");

  TextEditingController currentPassTextController = TextEditingController(text: "");
  TextEditingController passTextController = TextEditingController(text: "");
  TextEditingController rePassTextController = TextEditingController(text: "");
  TextEditingController phoneTextController = TextEditingController(text: "079888888");


  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container (
      height: height*0.31,
      padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.015),
      child: Column(
        children: [
          bottomSheetOption("Change your name", width, height, 0, 0, Icons.person_outline,(){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileEditScreen(
              appBarTitle: "Edit name",
              numberOfTextField: 1,
              textFieldControllers: [nameTextController],
              textFieldTypes: const ["Name"],
              onPressSave: (){},
            )));
          }),
          bottomSheetOption("Change your photo", width, height, 1, 0, Icons.photo_outlined,(){}),
          bottomSheetOption("Change your password", width, height, 2, 0, Icons.password_outlined,(){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileEditScreen(
              appBarTitle: "Edit password",
              numberOfTextField: 3,
              textFieldControllers: [currentPassTextController,passTextController,rePassTextController],
              textFieldTypes: const ["Current Password","New Password","Re New Password"],
              onPressSave: (){},
            )));
          }),
          bottomSheetOption("Change your phone number", width, height, 3, 0, Icons.phone_outlined,(){
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileEditScreen(
              appBarTitle: "Edit phone",
              numberOfTextField: 1,
              textFieldControllers: [phoneTextController],
              textFieldTypes: const ["Phone number"],
              onPressSave: (){},
            )));
          }),
        ],
      ),
    );
  }

  Widget bottomSheetOption(String optionName, double width, double height,
      int cIndex, lIndex, IconData icon,VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: height * 0.02),
        height: height * 0.05,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.04),
              child: Icon(icon,
                  color: MyColors.black, size: height * 0.035),),
            Text(
              optionName,
              maxLines: 1,
              style: TextStyle(
                  color: MyColors.hardGreen,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  letterSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }
}
