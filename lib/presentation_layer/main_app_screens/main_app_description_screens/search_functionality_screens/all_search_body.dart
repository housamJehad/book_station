import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/author_description_widgets/author_row.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_description_widgets/book_row.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/explore_screen_widgets/genre_row.dart';
import 'package:book_station/presentation_layer/widgets/text/information_text.dart';
import 'package:flutter/material.dart';

class AllBody extends StatelessWidget {
  const AllBody(
      {Key? key,
      required this.books,
      required this.authors,
      required this.genres,
      required this.searchFilter})
      : super(key: key);
  final List<Book> books;
  final List<Book> authors;
  final List<String> genres;
  final String searchFilter;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(
          visible: (searchFilter == "All" || searchFilter == "Books") &&
              books.isNotEmpty,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getColumnBody("Books", width, height),
          ),
        ),
        Visibility(
          visible: (searchFilter == "All" || searchFilter == "Authors") &&
              authors.isNotEmpty,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getColumnBody("Authors", width, height),
          ),
        ),
        Visibility(
          visible: (searchFilter == "All" || searchFilter == "Genres") &&
              genres.isNotEmpty,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getColumnBody("Genres", width, height),
          ),
        ),
      ],
    );
  }

  List<Widget> getColumnBody(String headName, double width, double height) {
    List<Widget> children = [];
    children.add(Padding(
      padding: EdgeInsets.only(left: width * 0.025),
      child: InformationText(
        text: headName,
        fontWeight: FontWeight.bold,
        textAlign: TextAlign.start,
        maxLines: 1,
        fontColor: MyColors.black,
        fontSize: height * 0.022,
      ),
    ));
    for (int i = 0;
        i <
            (headName == "Books"
                ? books.length
                : headName == "Authors"
                    ? authors.length
                    : genres.length);
        i++) {
      children.add(headName == "Books"
          ? BookRow(book: books[i])
          : headName == "Authors"
              ? AuthorRow(author: authors[i].bookAuthor)
              : GenreRow(genre: genres[i]));
    }

    return children;
  }
}
