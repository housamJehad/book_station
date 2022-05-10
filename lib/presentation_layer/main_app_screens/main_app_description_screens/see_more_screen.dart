import 'package:book_station/constant/my_colors.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/services/list_generator.dart';
import 'package:book_station/presentation_layer/widgets/app_bars/named_app_bar.dart';
import 'package:flutter/material.dart';




class SeeMoreScreen extends StatefulWidget {
  const SeeMoreScreen({Key? key, required this.appBarTitle, required this.books}) : super(key: key);
  final String appBarTitle;
  final List<Book>books;
  @override
  _SeeMoreScreenState createState() => _SeeMoreScreenState();
}

class _SeeMoreScreenState extends State<SeeMoreScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: MyColors.white,
        appBar: NamedAppBar(height: height,appBarTitle: widget.appBarTitle),
      body:   Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.01),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: ListGeneration().getAlsoLike(width, height,widget.books),
          ),
        ),
      ),
    );
  }
}
