import 'package:book_station/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PdfViewerScreen extends StatefulWidget {
  const PdfViewerScreen({Key? key, required this.pdfLink}) : super(key: key);
  final String pdfLink;
  @override
  _PdfViewerScreenState createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  int currentPage=0;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.network(
          widget.pdfLink,
          controller: _pdfViewerController,
          key: _pdfViewerStateKey),
      appBar: AppBar(
        backgroundColor: MyColors.white,
        title:const Text("Book",style: TextStyle(color: MyColors.black)),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon:const Icon(Icons.arrow_back,color: MyColors.black),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerStateKey.currentState!.openBookmarkView();
              },
              icon:const Icon(
                Icons.bookmark,
                color: MyColors.black,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(currentPage+5);
                setState(() {
                  currentPage+=5;
                });
              },
              icon:const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.black,
              )),

        ],
      ),
    );
  }
}
