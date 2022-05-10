import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/all_search_body.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/empty_search_body.dart';
import 'package:book_station/presentation_layer/main_app_screens/main_app_description_screens/search_functionality_screens/search_filters.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  bool isSearching = false, isGatherAllBody = false;
  int filterResultLength = 0;
  String filterName = "All";
  List<String> filters = [
    "All",
    "Book",
    "Genre",
    "Author",
  ];
  List<bool> selectedFilter = [true, false, false, false];

  List<Book> bookFilter = [];

  List<Book> authorFilter = [];

  List<String> genreFilter = [];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Container(
            height: height * 0.05,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black.withOpacity(0.2)),
            child: TextFormField(
                controller: searchController,
                onChanged: searchDetectorFunction,
                style: TextStyle(
                    fontSize: height * 0.023,
                    letterSpacing: 2,
                    fontWeight: FontWeight.normal),
                cursorColor: MyColors.hardGreen,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: MyColors.black.withOpacity(0.8),
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                      fontSize: height * 0.02),
                  focusColor: MyColors.hardGreen,
                  prefixIcon: Icon(
                    Icons.search,
                    size: height * 0.03,
                    color: MyColors.black,
                  ),
                ))),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: isSearching
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      margin: EdgeInsets.symmetric(
                          vertical: height * 0.01, horizontal: width * 0.04),
                      height: height * 0.06,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: getFilters(width, height),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: filterName == "All"
                            ? bookFilter.isEmpty &&
                                    genreFilter.isEmpty &&
                                    authorFilter.isEmpty
                                ? EmptySearchBody(
                                    width: width,
                                    height: height * 0.6,
                                    headText: "There is no result",
                                    tailText: "Try type something else",
                                    headFontSize: height * 0.025,
                                    tailFontSize: height * 0.02,
                                  )
                                : AllBody(
                                    searchFilter: "All",
                                    books: bookFilter,
                                    authors: authorFilter,
                                    genres: genreFilter)
                            : filterName == "Book"
                                ? bookFilter.isEmpty
                                    ? EmptySearchBody(
                                        width: width,
                                        height: height * 0.6,
                                        headText: "There is no result",
                                        tailText: "Try type something else",
                                        headFontSize: height * 0.025,
                                        tailFontSize: height * 0.02,
                                      )
                                    : AllBody(
                                        searchFilter: "Books",
                                        books: bookFilter,
                                        authors: authorFilter,
                                        genres: genreFilter)
                                : filterName == "Author"
                                    ? authorFilter.isEmpty
                                        ? EmptySearchBody(
                                            width: width,
                                            height: height * 0.6,
                                            headText: "There is no result",
                                            tailText: "Try type something else",
                                            headFontSize: height * 0.025,
                                            tailFontSize: height * 0.02,
                                          )
                                        : AllBody(
                                            searchFilter: "Authors",
                                            books: bookFilter,
                                            authors: authorFilter,
                                            genres: genreFilter)
                                    : genreFilter.isEmpty
                                        ? EmptySearchBody(
                                            width: width,
                                            height: height * 0.6,
                                            headText: "There is no result",
                                            tailText: "Try type something else",
                                            headFontSize: height * 0.025,
                                            tailFontSize: height * 0.02,
                                          )
                                        : AllBody(
                                            searchFilter: "Genres",
                                            books: bookFilter,
                                            authors: authorFilter,
                                            genres: genreFilter)),
                  ],
                ),
              )
            : EmptySearchBody(
                width: width,
                height: height * 0.8,
                headText: "Read what you love",
                tailText: "Books,Author,Publisher,Genre",
                headFontSize: height * 0.025,
                tailFontSize: height * 0.02,
              ),
      ),
    );
  }

  List<Widget> getFilters(double width, double height) {
    List<Widget> filtersWidgets = [];
    int index = 0;
    for (int i = 0; i < filters.length; i++) {
      int val = index;
      filtersWidgets.add(
        SearchFilter(
          height: height,
          width: width,
          elevation: 0,
          borderColor: selectedFilter[i] ? MyColors.white : MyColors.black,
          primaryColor:
              selectedFilter[i] ? MyColors.hardGreen : Colors.transparent,
          onPrimaryColor: selectedFilter[i]
              ? MyColors.white
              : MyColors.black.withOpacity(0.5),
          filterText: filters[i],
          onPressFilter: () {
            for (int j = 0; j < filters.length; j++) {
              if (j == val) {
                setState(() {
                  selectedFilter[j] = true;
                  filterName = filters[j];
                  searchDetectorFunction(searchController.text.trim());
                });
              } else {
                setState(() {
                  selectedFilter[j] = false;
                });
              }
            }
          },
        ),
      );
      index++;
    }
    return filtersWidgets;
  }

  void checkIsSearch() {
    if (searchController.text.isEmpty) {
      setState(() {
        isSearching = false;
      });
    } else {
      setState(() {
        isSearching = true;
        bookFilter.clear();
      });
    }
  }

  void searchDetectorFunction(String query) {
    checkIsSearch();
    if (filterName == "All") {
      searchGenre(query);
      searchAuthor(query);
      searchBook(query);
    } else if (filterName == "Book") {
      searchBook(query);
    } else if (filterName == "Author") {
      searchAuthor(query);
    } else {
      searchGenre(query);
    }
  }

  void searchGenre(String query) {
    final List<String> suggestions =
        BooksCategories().userInterestGenres.where((element) {
      final genreName = element.toLowerCase();
      final input = query.toLowerCase();
      return genreName.contains(input);
    }).toList();
    setState(() {
      filterResultLength = suggestions.length;
      genreFilter = suggestions;
    });
  }

  void searchAuthor(String query) {
    final List<Book> suggestions = BooksCategories().books.where((element) {
      final String bookAuthor = element.bookAuthor.authorName.toLowerCase();
      final String input = query.toLowerCase();
      return bookAuthor.contains(input);
    }).toList();
    setState(() {
      filterResultLength = suggestions.length;
      authorFilter = suggestions;
    });
  }

  void searchBook(String query) {
    final List<Book> suggestions = BooksCategories().books.where((element) {
      final bookTitle = element.bookName.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() {
      filterResultLength = suggestions.length;
      bookFilter = suggestions;
    });
  }
}
