import 'package:flutter/material.dart';

// Main Colors (MaterialColor):
// --------------------------------------------------
const kWhite = Colors.white;
const kBlack = Colors.black;
const kTransparent = Colors.transparent;
const kRed = Colors.red;
const kGreen = Colors.green;
const kBlue = Colors.blue;
const kYellow = Colors.yellow;
const kGrey = Colors.grey;
//
const cRed = Color(0xFFE92E30);
const cBlue = Colors.blue;
const cGreen = Color(0xFF6AC259);
const cYellow = Colors.yellow;
const cGrey = Color(0xFFC1C1C1);
const cWhite = Color(0xFFFFFFFF);
const cBlack = Color(0xFF101010);
const cTransparent = Colors.transparent;

//--App Colors Pallets:
const cPrimer = Color.fromARGB(255, 104, 133, 156);
const cSecond = Color.fromARGB(255, 243, 231, 206);
const kAppPrimary = Colors.teal;
const kAppPrimaryDark = Color(0xffa2d2ff);
const kAppPrimaryDark2 = Color(0xffcdb4db);
const kAppPrimaryLight = Color(0xffbde0fe);
const kAppSecondary = Color(0xffafcc);
const kAppSecondaryLight = Color(0xffc8dd);
const cTx1 = cBlack;
//secondarText = Grey
const cTx2 = Color.fromARGB(255, 102, 102, 102);
//primaryBackground == Color Primary
const cBg1 = cPrimer;
//secondaryBackground = Grey
const cBg2 = Color.fromARGB(255, 247, 247, 249);
//primaryElement = blue
const cElement1 = Color.fromARGB(255, 61, 61, 216);
//
const cStroke = Color.fromARGB(255, 104, 133, 156);

//--App Colors Additional:
const kAppBiruDark = Color(0xFF0081a7);
final kAppBiruLight = Color(0xFF00afb9);
const kAppKuning = Color(0xFFfdfcdc);
const kAppCoklat = Color(0xFFfed9b7);
const kAppMerah = Color(0xFFf07167);
const kAppGrey = Color(0xFFEEEEEE);

//--Bootstrap Color Standards: (Primary, Secondary,Success,Danger,Warnig,Info,Light,Dark)
//--Background Color:
const kBgPrimary = Color(0xFF007BFF);
const kBgSecondary = Color(0xFF6C757D);
const kBgSuccess = Color(0xFF28A745);
const kBgDanger = Color(0xFFDC3545);
const kBgWarning = Color(0xFFFFC107);
const kBgInfo = Color(0xFF17A2B8);
const kBgLight = Color(0xFFF8F9FA);
const kBgDark = Color(0xFF343A40);

//--Gradient:
const kAppGradientPrim = LinearGradient(
  colors: [kAppPrimary, kWhite, kAppPrimaryDark],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kPrimaryGradient = LinearGradient(
  colors: [kAppPrimary, kWhite],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);