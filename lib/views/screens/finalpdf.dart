import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';
import 'package:pdf/pdf.dart';
import 'dart:io';
import 'package:printing/printing.dart';

class pdfpage extends StatefulWidget {
  const pdfpage({Key? key}) : super(key: key);

  @override
  State<pdfpage> createState() => _pdfpageState();
}

class _pdfpageState extends State<pdfpage> {
  @override
  pw.Document pdf = pw.Document();
  generatePdf() async {
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context Context) => pw.Container(
            height: double.infinity,
            width: double.infinity,
            child: pw.Row(
              children: [
                pw.Expanded(
                  flex: 1,
                  child: pw.Column(
                    children: [pw.Container(color: PdfColors.red)],
                  ),
                ),
                pw.Expanded(
                    flex: 2,
                    child: pw.Column(
                      children: [pw.Container(color: PdfColors.black)],
                    ))
              ],
            )),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generatePdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Resume",
          style: titletextstyle,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Mybackicon(),
      ),
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
