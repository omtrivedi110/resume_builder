import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/utils/variables.dart';
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
                  children: [
                    pw.Container(
                      height: 150,
                      width: 150,
                      decoration: pw.BoxDecoration(
                          shape: pw.BoxShape.circle, image: pw.DecorationImage(image: pw.MemoryImage(File(Myvariable.image!.path).readAsBytesSync()),),),
                    ),
                    pw.Container(
                        height: 100,
                        alignment: pw.Alignment.center,
                        width: double.infinity,
                        decoration: pw.BoxDecoration(
                            color: PdfColors.yellow,
                            borderRadius: pw.BorderRadius.circular(15)),
                        child: pw.Text("${Myvariable.name}",
                            style: const pw.TextStyle(
                              fontSize: 32,
                              color: PdfColors.black,
                            )))
                  ],
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Column(
                  children: [

                  ],
                ),
              ),
            ],
          ),
        ),
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
