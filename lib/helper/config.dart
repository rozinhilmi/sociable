import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sociable/helper/hexcolor.dart';

class Config {
  static final HexColor primary = new HexColor('#3DC6F2');
  static final HexColor darkPrimary = new HexColor('#00A2E9');
  static final HexColor textWhite = new HexColor('#ffffff');
  static final HexColor textAuth = new HexColor('#407a9d');
  static final HexColor textMerah = new HexColor('#e82b3f');
  static final HexColor textGrey = new HexColor('#B6B6B6');
  static final HexColor textBlack = new HexColor('#000000');
  static final HexColor textHeader = new HexColor('#1B2638');
  static final HexColor boxGreen = new HexColor('#2ecc71');
  static final HexColor boxGreenLight = new HexColor('#ACD1AF');
  static final HexColor boxYellow = new HexColor('#f39c12');
  static final HexColor boxYellowLight = new HexColor('#f1c40f');
  static final HexColor buttonRed = new HexColor('#FF0000');
  static final HexColor buttonGrey = new HexColor('#EAEAEA');
  static final HexColor textRed = new HexColor('#FF0000');
  static final HexColor onprogres = new HexColor('#FFA155');
  static final HexColor closed = new HexColor('#B3B3B3');
  static final HexColor open = new HexColor('#00C45C');
  static final HexColor background = new HexColor('#f8f8f8');
  static final HexColor borderInput = new HexColor('#BDBDBD');
  static final HexColor baru = new HexColor('#009240');
  static final HexColor low = new HexColor('#3ec8c8');
  static final HexColor medium = new HexColor('#FFBA00');
  static final HexColor high = new HexColor('#F41B35');
  static final HexColor deal = new HexColor('#0077a4');
  static final HexColor batal = new HexColor('#CFD8DC');
  static final HexColor total = new HexColor('#7366FF');
  static final HexColor inActif = new HexColor('#E5E5E5');

   // menampilkan loading berupa dialog
  static loading(context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
              // backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                  height: 200.0,
                  width: 200.0,
                  padding: EdgeInsets.all(18),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SpinKitDoubleBounce(color: Config.primary, size: 50.0),
                      SizedBox(height: 30.0),
                      Text(
                        "Memuat Data",
                        style: GoogleFonts.lato(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )));
        });
  }

  static emptyData(String pesan, context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Image.asset('assets/images/illustration/dataKosong.png')),
          Text(
            'Belum ada data Prospek',
            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            // style: TextStyle(fontFamily: 'AirbnbMedium'),
          ),
        ],
      ),
    );
  }

  static alert(tipe, pesan) {
    Fluttertoast.showToast(
        msg: pesan,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor:
            (tipe == 1 ? Colors.green : Colors.red), // 1 untuk berhasil
        textColor: Colors.white,
        fontSize: 16.0);
  }

  // menampilkan loading 1 page penuh
  static loader(pesan) {
    return Center(
      child: Container(
        color: Colors.white,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitFadingCube(color: Config.primary, size: 50.0),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: new Text(
                  pesan,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    textStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}