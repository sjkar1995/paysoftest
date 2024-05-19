import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

//import 'package:flutter_pdfview/flutter_pdfview.dart';
class PdfGenerator {
  var pdf = pw.Document();

  Future<void> generatePdf() async {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(children: [
            pw.Container(
              alignment: pw.Alignment.center,
              child: pw.Text(
                'NATIONAL INSTITUTE OF TB & RESPI. DISEASES',
                style:
                    pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
              ),
            ),
            pw.SizedBox(height: 20), // Spacer
            pw.Container(
              alignment: pw.Alignment.center,
              child: pw.Text(
                'NEW DELHI - 110030',
                style: pw.TextStyle(fontSize: 12),
              ),
            ),
            pw.SizedBox(height: 20), // Space
            pw.Container(
              alignment: pw.Alignment.center,
              child: pw.Text(
                'Payslip for the month of Feb 2024',
                style: pw.TextStyle(fontSize: 12),
              ),
            ),
            pw.SizedBox(height: 20), // Spacer
            pw.Table(border: null, children: [
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 50, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text('Code', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 100, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child:
                        pw.Text('XXXXXXX', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 60, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text('Name:'),
                  ),
                  pw.Container(
                    width: 150, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text('XXXXX', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 60, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child:
                        pw.Text('Desig. :', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 100, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text('XXXXXX', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.SizedBox(height: 20), // Spacer
                ],
              ),
              pw.TableRow(
                children: [
                  pw.Container(
                    width: 150, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.bottomLeft,
                    child:
                        pw.Text('NPS-CODE', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 100, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.bottomLeft,
                    child: pw.Text('XXXXX', style: pw.TextStyle(fontSize: 12)),
                  ),
                  pw.Container(
                    width: 150, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.bottomLeft,
                    child: pw.Text('Pay Level'),
                  ),
                  pw.Container(
                    width: 150, // Set the width of the cell
                    height: 15, // Set the height of the cell
                    alignment: pw.Alignment.bottomLeft,
                    child:
                        pw.Text('XXXXXXX', style: pw.TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ]),

            pw.SizedBox(height: 10), // Spacer
            pw.Container(
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                '------------------------------------------------------------------------------------------------------------------------',
                style: pw.TextStyle(fontSize: 12),
              ),
            ),
            pw.Container(
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                'Earnings                                                              Deductions',
                style: pw.TextStyle(fontSize: 12),
              ),
            ),
            pw.Container(
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                '------------------------------------------------------------------------------------------------------------------------',
                style: pw.TextStyle(fontSize: 12),
              ),
            ),

            pw.Table(
              border: null,
              children: [
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('Basic', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Pf-Subscription',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Pf-Advance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('N.P.A', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Car/Vehicle loan',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('D.A', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Festival loan',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('P.C.A ', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('G.L.I.S', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('O.T.A', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Income Tax',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('H.R.A', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Electric Charges',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Conveyance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Water Charges',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Washing Allownance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Licence fee',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Dress Allownance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Emp. Pf-contribution',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('Adhoc', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('E.H.S', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('A.R.P', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Leav Ded',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('P.G Allownance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('NPS-Subscription',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Nursing Allownance',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('Others', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('10000', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Spl. Pay',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Leav Pay',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text(
                          '___________________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('_____________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('Others ', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child:
                          pw.Text('62500', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('Total Deductions',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('900', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________'),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.bottomLeft,
                      child: pw.Text('Gross Pay',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.bottomLeft,
                      child: pw.Text('300', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.bottomLeft,
                      child: pw.Text(''),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.bottomLeft,
                      child:
                          pw.Text('Net Pay', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.bottomLeft,
                      child: pw.Text('100', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 40, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________'),
                    ),
                    pw.Container(
                      width: 150, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      width: 100, // Set the width of the cell
                      height: 15, // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('____________________________________',
                          style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                pw.TableRow(
                  children: [
                    pw.Container(
                      // Set the width of the cell
                      // Set the height of the cell
                      alignment: pw.Alignment.centerLeft,
                      child:
                          pw.Text('Remarks', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.Container(
                      // Set the width of the cell
                      // Set the height of the cell
                      alignment: pw.Alignment.centerRight,
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ],
            )

            //pw.column
          ]);
        },
      ),
    ); // Page
  }

  Future<void> savePdf() async {
    Printing.sharePdf(bytes: await pdf.save(), filename: 'example.pdf');
    pdf = pw.Document();
  }
}
