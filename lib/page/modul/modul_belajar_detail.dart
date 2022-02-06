import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ModulDetail extends StatefulWidget {
  String ebook;
  ModulDetail({required this.ebook});

  @override
  _ModulDetailState createState() => _ModulDetailState();
}

class _ModulDetailState extends State<ModulDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
      ),
      body: SfPdfViewer.network(widget.ebook),
    );
  }
}
