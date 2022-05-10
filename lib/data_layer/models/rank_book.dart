import 'package:book_station/data_layer/models/book.dart';
import 'package:flutter/material.dart';

class RankBook {
  Book book;
  int rank;
  Color rankColor;
  RankBook({required this.book, required this.rank,required this.rankColor});
}
