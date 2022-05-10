import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/create_log_screens/login_screen/user_interest_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/calendar_description_screen.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/notification_screen.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/named_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/bottom_sheets/profile_edit_bottom_sheet.dart';
import 'package:book_station/presentation_layer/widgets/grid_views/main_grid_view.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/author_description_widgets/author_avatar.dart';
import 'package:book_station/presentation_layer/widgets/text/column_text.dart';
import 'package:book_station/presentation_layer/widgets/text/row_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ListGeneration listGeneration = ListGeneration();
  int currentScreen = 0;
  late Book bookOne;
  @override
  void initState() {
    bookOne = Book(
        bookName: "Romeo and Juliet",
        bookDescription:
            "In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.In this death-filled setting, the movement from love at first sight to the lovers’ final union in death seems almost inevitable. And yet, this play set in an extraordinary world has become the quintessential story of young love. In part because of its exquisite language, it is easy to respond as if it were about all young lovers.",
        bookAuthor: Author(
          authorName: "William Shakespeare",
          authorDescription:
              "William Shakespeare (baptised 26 April 1564) was an English poet and playwright, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist. He is often called England's national poet and the \"Bard of Avon\" (or simply \"The Bard\"). His surviving works consist of 38 plays, 154 sonnets, two long narrative poems, and several other poems. His plays have been translated into every major living language, and are performed more often than those of any other playwright.",
          authorBooks: [],
          authorPhoto: "assets/images/Shakespeare.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/4.jpg");

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
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        centerTitle: false,
        title: const Text(
          "Book Station",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            letterSpacing: 1,
            color: MyColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()));
            },
            icon: const Icon(Icons.notifications_none, color: MyColors.black),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CalendarDescriptionScreen()));
            },
            icon: const Icon(Icons.lock_clock, color: MyColors.black),
          ),
          IconButton(
            onPressed: onEditPress,
            icon: const Icon(Icons.menu, color: MyColors.black),
          ),

        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.015, vertical: height * 0.01),
                height: height * 0.4,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: width * 0.3,
                                      child: CircleAvatar(
                                        backgroundImage: const AssetImage(
                                            "assets/images/housam.jpeg"),
                                        radius: width * 0.11,
                                      )),
                                  SizedBox(
                                    width: width * 0.65,
                                    height: height * 0.11,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: SizedBox(
                                              height: height * 0.1,
                                              child: ColumnText(
                                                  height: height,
                                                  postText: "Borrowed",
                                                  prefNumber: 100),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: SizedBox(
                                              height: height * 0.1,
                                              child: ColumnText(
                                                  height: height,
                                                  postText: "Recent",
                                                  prefNumber: 1),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: SizedBox(
                                              height: height * 0.1,
                                              child: ColumnText(
                                                  height: height,
                                                  postText: "Love",
                                                  prefNumber: 15),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "Housam Aldeen Jehad",
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                            letterSpacing: 1),
                                      ),
                                      Text(
                                        "23/11/1999",
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: height * 0.015,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                            letterSpacing: 1),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: MyColors.black,
                                                width: width * 0.001)),
                                        width: width * 0.93,
                                        height: height * 0.035,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: MyColors.white,
                                                onPrimary: MyColors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5))),
                                            onPressed: onEditPress,
                                            child: Center(
                                              child: Text(
                                                "Edit Profile",
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: MyColors.black,
                                                    fontSize: height * 0.018,
                                                    fontWeight: FontWeight.bold,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    letterSpacing: 1),
                                              ),
                                            )),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: RowText(
                                    height: height,
                                    width: width,
                                    text: "Favourite Author",
                                    onTap: () {},
                                    isEditable: false),
                              ),
                              Expanded(
                                flex: 5,
                                child: SizedBox(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children:  [
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[0].book.bookAuthor,
                                        ),
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[1].book.bookAuthor,
                                        ),
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[2].book.bookAuthor,
                                        ),
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[3].book.bookAuthor,
                                        ),
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[4].book.bookAuthor,
                                        ),
                                        AuthorAvatar(
                                          author: BooksCategories().rankingBook8[5].book.bookAuthor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowText(
                        height: height,
                        width: width,
                        text: "Favourite Genre",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserInterestScreen(
                                      onCompleteSelect: "Save",
                                      genres:
                                          BooksCategories().userInterestGenres,
                                      appBar: NamedAppBar(
                                          appBarTitle: "Your Genres",
                                          height: height),
                                      onSubmitPress: () {
                                        Navigator.of(context).pop();
                                      },
                                    )),
                          );
                        },
                        isEditable: true),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    MainGridView(
                      crossElementNumber: 2,
                      elementMarginWidth: width * 0.02,
                      gridChildren: listGeneration.getGenres(BooksCategories().profileGenres),
                      elementSize: height * 0.05,
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    RowText(
                        height: height,
                        width: width,
                        text: "Favourite Books",
                        onTap: () {},
                        isEditable: false),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: listGeneration.getAlsoLike(
                            width, height, BooksCategories().recentReadBooks2),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onEditPress() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      builder: (builder) {
        return const ProfileEditBottomSheetBody();
      },
    );
  }
}
