import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/presentation_layer/widgets/grid_views/main_grid_view.dart';
import 'package:book_station/presentation_layer/widgets/text/genre_selector.dart';
import 'package:book_station/presentation_layer/widgets/text/intro_text.dart';
import 'package:flutter/material.dart';

class UserInterestScreen extends StatefulWidget {
  const UserInterestScreen(
      {Key? key,
      required this.genres,
      required this.appBar,
      required this.onCompleteSelect,
      required this.onSubmitPress})
      : super(key: key);
  final List<String> genres;
  final PreferredSizeWidget appBar;
  final String onCompleteSelect;
  final VoidCallback onSubmitPress;

  @override
  _UserInterestScreenState createState() => _UserInterestScreenState();
}

class _UserInterestScreenState extends State<UserInterestScreen> {
  int target = 0;
  late List<Color> genreBorderColor = [];
  late List<bool> selectedGenre = [];
  @override
  void initState() {
    for (int i = 0; i < widget.genres.length; i++) {
      genreBorderColor.add(MyColors.gray);
      selectedGenre.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: widget.appBar,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: MyColors.gray, width: width * 0.002))),
          height: height * 0.1,
          width: width,
          child: ElevatedButton(
            onPressed: target >= 3 ? widget.onSubmitPress : () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              primary: MyColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: AnimatedContainer(
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 300),
                height: height * 0.07,
                width: target >= 3 ? 250 : 200,
                decoration: BoxDecoration(
                    color: MyColors.hardGreen,
                    borderRadius: BorderRadius.circular(10)),
                child: target >= 3
                    ? Text(
                        widget.onCompleteSelect,
                        style: TextStyle(
                            fontSize: height * 0.025,
                            color: MyColors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("$target/3",
                              style: TextStyle(
                                  fontSize: height * 0.025,
                                  letterSpacing: 1,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Icon(Icons.navigate_next, size: height * 0.03),
                        ],
                      )),
          ),
        ),
        body: SizedBox(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntroText(
                        height: height * 0.025,
                        text: "What is your taste",
                        alignment: Alignment.center,
                        textColor: MyColors.black),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Select three or more podcast genres you like",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 1, fontSize: height * 0.02),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: centerSection(
                            width, height, BooksCategories().bookCategories)),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget centerSection(
      double width, double height, Map<String, String> categories) {
    return SizedBox(
      child: Column(
        children: [
          MainGridView(
            crossElementNumber: 2,
            elementMarginWidth: width * 0.02,
            gridChildren: getInterest(categories, width, height),
            elementSize: height * 0.05,
          ),
        ],
      ),
    );
  }

  List<Widget> getInterest(
      Map<String, String> categories, double width, double height) {
    List<Widget> interestList = [];
    int index = 0;
    categories.forEach((key, value) {
      int val = index;
      interestList.add(GenreSelector(
          genreName: key,
          borderColor: genreBorderColor[val],
          onTap: () {
            if (genreBorderColor[val] == MyColors.gray) {
              setState(() {
                target++;
                genreBorderColor[val] = MyColors.hardGreen;
                selectedGenre[val] = true;
              });
            } else {
              setState(() {
                if (target > 0) {
                  target--;
                }
                selectedGenre[val] = false;
                genreBorderColor[val] = MyColors.gray;
              });
            }
          }));
      index++;
    });
    return interestList;
  }

}
