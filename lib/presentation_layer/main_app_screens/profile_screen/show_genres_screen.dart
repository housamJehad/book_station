import 'package:book_station/constant/books_categories.dart';
import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/named_app_bar.dart';
import 'package:book_station/presentation_layer/widgets/grid_views/main_grid_view.dart';
import 'package:flutter/material.dart';



class ShowGenresScreen extends StatelessWidget {
  const ShowGenresScreen({Key? key, required this.genres}) : super(key: key);
  final List<String>genres;
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: NamedAppBar(height: height,appBarTitle: "Favorite Genres"),
      body: Container(
        margin: EdgeInsets.only(
            top: height*0.02,
            bottom: height * 0.01,
            right: width * 0.03,
            left: width * 0.03),
       child: SingleChildScrollView(
         child: MainGridView(
           crossElementNumber: 2,
           elementMarginWidth: width * 0.02,
           gridChildren: ListGeneration().getGenres(BooksCategories().profileGenres),
           elementSize: height * 0.05,
         ),
       ),
      ),

    );
  }
}
