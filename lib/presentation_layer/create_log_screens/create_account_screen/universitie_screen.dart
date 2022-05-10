import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/presentation_layer/create_log_screens/create_account_screen/user_type_selector_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/buttons/small_custom_elevated_button.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UniversitiesScreen extends StatefulWidget {
  const UniversitiesScreen({Key? key}) : super(key: key);
  @override
  _UniversitiesScreenState createState() => _UniversitiesScreenState();
}

class _UniversitiesScreenState extends State<UniversitiesScreen> {
  int currentIndex=-1;
  List<String>universities = [
    "Balqa Applied University",
    "University of Jordan",
    "Yarmouk University",
    "Al-Ahliyya Amman University",
    "Mutah University",
    "Hashemite University",
    "Al al-Bayt University",
    "Al-Zaytoonah University of Jordan",
    "Petra University",
      ];
  List<String>uniLogos=[
    "assets/images/balqa.png",
    "assets/images/jordan.png",
    "assets/images/yarmook.png",
    "assets/images/ahli (1).png",
    "assets/images/motah.png",
    "assets/images/hasm.png",
    "assets/images/albeat.png",
    "assets/images/zaytoon.png",
    "assets/images/petra.png"
  ];
 List<Color>uniColor=[
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white,
   MyColors.white
 ];
  List<Color>textColor=[
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    MyColors.black,
    ];
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
                buttonColor:currentIndex==-1?Colors.black38: MyColors.hardGreen,
                buttonIcon: Icons.navigate_next,
                buttonOnPress: currentIndex==-1?(){}:(){
                  Navigator.of(context).push(CustomPageRoute(
                      child: const UserTypeScreen(
                          svgPhoto:
                          "assets/images/undraw_people_re_8spw.svg",
                          firstType: "Male",
                          secondType: "Female",
                          firstIcon: FontAwesomeIcons.mars,
                          secondIcon: FontAwesomeIcons.venus,
                          isStd: true,
                          introText: "Please select your gender",
                          type: "gender"),
                      direction: AxisDirection.right));
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
            vertical: height * 0.002,
          ),
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: IntroText(
                  textColor: MyColors.black,
                  height: height * 0.025,
                  alignment: Alignment.center,
                  text: "Please select a collage",
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                child: ListView(
                  children: List.generate(universities.length, (index) {
                    return UniversitySelector(
                        uniName: universities[index],
                        uniPhoto: uniLogos[index],
                        selectorColor: uniColor[index],
                        textColor: textColor[index],
                        index: index,
                        onPress: (){
                          for(int i=0;i<universities.length;i++){
                            if(index==i){
                              setState(() {
                                uniColor[i]=MyColors.hardGreen;
                                textColor[i]=MyColors.white;
                                currentIndex=i;
                              });
                            }else{
                              setState(() {
                                uniColor[i]=MyColors.white;
                                textColor[i]=MyColors.black;
                              });
                            }
                           }
                        }
                    );
                  }),
                ),
              )
            ],
          ),
        ));
  }
}

class UniversitySelector extends StatelessWidget {
  final String uniName, uniPhoto;
  final Color selectorColor,textColor;
  final VoidCallback onPress;
  final int index;
  const UniversitySelector(
      {Key? key,
      required this.uniName,
      required this.uniPhoto,
      required this.selectorColor,
      required this.onPress, required this.index, required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.08,
      margin: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: 3),
      child: ElevatedButton(
        onPressed: onPress,
        child: ListTile(
          style: ListTileStyle.list,
          leading:Container(
            alignment: Alignment.center,
            width: width*0.15,
            height: height*0.07,
            child:  Image.asset(uniPhoto),
          ),
          title: Text(
              uniName,
             style:TextStyle(
                 fontSize: height*0.02,
                 color: textColor,
                 letterSpacing: 1,
                 fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            onPrimary:textColor,
            primary: selectorColor,
            elevation: 5),
      ),
    );
  }
}
