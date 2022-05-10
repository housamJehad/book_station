import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/models/rank_book.dart';
import 'package:book_station/presentation_layer/main_app_screens/featured_screen/for_you_tab.dart';
import 'package:book_station/presentation_layer/shimmers/shimmers_widget.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/also_book_like.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/explore_screen_widgets/explore_genre_book.dart';
import 'package:book_station/presentation_layer/widgets/text/genre_selector.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/ranking.dart';
import 'package:book_station/presentation_layer/widgets/home_screen_widgets/book_design_widgets/recommendation_book.dart';
import 'package:flutter/material.dart';

class ListGeneration{


  List<Widget> getRecommendationShimmerTag(
      double width, height, List<String> tags) {
    List<Widget> recommendationShimmerTagWidget = [];
    for (int i = 0; i < tags.length; i++) {
      recommendationShimmerTagWidget.add(
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: BookSelectorShimmer.rectangle(
              width: width * 0.2, height: height * 0.03, radius: 3),
        ),
      );
    }
    return recommendationShimmerTagWidget;
  }


  List<Widget> getShimmers(
      double width, double height, Map<String, String> bookList) {
    List<Widget> shimmerWidget = [];
    bookList.forEach((key, value) {
      shimmerWidget.add(
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: BookSelectorShimmer.rectangle(
              width: width, height: height, radius: 5),
        ),
      );
    });
    return shimmerWidget;
  }


  List<Widget> getShimmersCircle(
      double width, double height, Map<String, String> bookList,double radius) {
    List<Widget> shimmerWidget = [];
    bookList.forEach((key, value) {
      shimmerWidget.add(
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: BookSelectorShimmer.rectangle(
              width: width, height: height, radius: radius),
        ),
      );
    });
    return shimmerWidget;
  }


  List<Widget> getRecommendationBook(
      double width, double height, List<Book> recommendationList) {
    List<Widget> recommendationBookWidget = [];
    for (Book element in recommendationList) {
      recommendationBookWidget.add(
          RecommendationBook(
              width: width, height: height,book: element,)
      );
    }

    return recommendationBookWidget;
  }

  List<Widget> getReaderBook(
      double width, double height, List<Book> readerList) {
    List<Widget> readerBookWidget = [];
     for (Book element in readerList) {
       readerBookWidget.add(ReadersBook(width: width, height: height, book:element));
  }
    return readerBookWidget;
  }

  List<Widget> getRankBook(double width, double height, List<RankBook> rankList) {
    List<Widget> rankBookWidget = [];
    for (int i = 0; i < rankList.length; i++) {
      rankBookWidget.add(
        Ranking(
          width: width,
          height: height,
          rankBook: rankList[i],
        ),
      );
    }
    return rankBookWidget;
  }

  List<Widget> getAlsoLike(
      double width, double height, List<Book> books) {
    List<Widget> alsoLikeWidget = [];
    for (int i = 0; i < books.length; i++) {
      alsoLikeWidget.add(
        AlsoBookLike(
          width: width,
          height: height,
          book: books[i],

          ),
      );
    }
    return alsoLikeWidget;
  }

  List<Widget> getEditorBook(
      double width, double height, List<Book> editorList) {
    List<Widget> editorBookWidget = [];
    for (Book element in editorList) {
      editorBookWidget.add(
          RecommendationBook(
            width: width, height: height,book: element,)
      );
    }


    return editorBookWidget;
  }


  List<Widget>getExploreGenreBook(double width,double height,Map<String,String>genreBooks){
    List<Widget>exploreBookWidgets=[];
    genreBooks.forEach((key, value) {
      exploreBookWidgets.add(
          ExploreGenreBook(width: width*0.15, height: height*0.18, photo:value, name:key, fontSize: height*0.015)
      );
    });
    return exploreBookWidgets;
  }


  List<Widget>getGenres(List<String> genres){
    List<Widget>genresWidgets=[];
    for(int i=0;i<genres.length;i++){
      genresWidgets.add(
        GenreSelector(
            genreName: genres[i],
            borderColor: MyColors.gray,
            onTap: () {}),
      );
    }
    return genresWidgets;
  }
  List<Book>transformRankBook(List<RankBook>rankBook,List<RankBook>rankBook2){
    List<Book>books=[];
    for (RankBook element in rankBook) {
      books.add(element.book);
    }
    for (RankBook element in rankBook2) {
      books.add(element.book);
    }
    return books;
  }

  ListGeneration();
}