import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/custom_page_route.dart';
import 'package:book_station/presentation_layer/create_log_screens/log_option_screen/log_option_screen.dart';
import 'package:book_station/presentation_layer/popup/exit_popup.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/normal_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/sliders/slider_page.dart';
import 'package:flutter/material.dart';

class LetsStartScreen extends StatefulWidget {
  const LetsStartScreen(
      {Key? key,
     })
      : super(key: key);

  @override
  _LetsStartScreenState createState() => _LetsStartScreenState();
}

class _LetsStartScreenState extends State<LetsStartScreen> {
  List<Color> indicatorColors = [
    MyColors.gray,
    MyColors.gray,
    MyColors.gray,
    MyColors.gray
  ];
  int currentPage = 0;
  PageController pageController = PageController();
  List<Widget> pages = [
    const SliderPage(
        svgPhotoPath: "assets/images/time2.png",
        introductionText:
            "15 min and one of the best non-fiction book is done"),
    const SliderPage(
        svgPhotoPath: "assets/images/books.png",
        introductionText: "1 summary per day, 7 per week and 30 per month"),
    const SliderPage(
        svgPhotoPath: "assets/images/listen.png",
        introductionText: "Nothing extra -\nonly must read"),
    const SliderPage(
        svgPhotoPath: "assets/images/ill2.png",
        introductionText: "Get smarter right now! Save you years of time"),
  ];
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop:()async{
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
          body: Stack(
            children: [
              PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: pages.length,
                onPageChanged: onChanged,
                itemBuilder: (context, int index) {
                  return pages[index];
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(pages.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: index == currentPage ? 30 : 10,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: index == currentPage
                                ? MyColors.hardGreen
                                : Colors.black38),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: currentPage == (pages.length - 1)
                        ? (){
                    Navigator.of(context).push(
                      CustomPageRoute(child: const LogOptionScreen(),direction: AxisDirection.up)
                    );
                    }
                        : () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                          },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    child: AnimatedContainer(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 300),
                        height: height * 0.07,
                        width: currentPage == (pages.length - 1) ? 250 : 200,
                        decoration: BoxDecoration(
                          color: MyColors.hardGreen,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: currentPage == (pages.length - 1)
                            ? Text(
                                "Let's start",
                                style: TextStyle(
                                    fontSize: height * 0.025,
                                    color: MyColors.white,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              )
                            :  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text("Next",
                                style: TextStyle(
                                    fontSize: height*0.025,
                                    letterSpacing: 1,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: width*0.02,
                            ),
                            Icon(Icons.navigate_next,size: height*0.03),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ],
          )),
    );
  }
}