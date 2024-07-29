import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

double defaultPadding = 20;
double defaultBorderRadius = 15;

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

bool keyboardIsOpen(BuildContext context) {
  return MediaQuery.of(context).viewInsets.bottom != 0;
}

Color primaryColor = const Color(0xFFff3131);
Color secondaryColor = const Color(0xFFf08283);
Color black = const Color(0xFF000000);
Color white = const Color(0xFFFFFFFF);
Color red = Colors.red;
Color darkBackgorundColor = const Color(0xff1c201f);
Color grey700 = const Color(0xFF111114);
Color grey600 = const Color(0xFF2b2b30);
Color grey500 = const Color(0xFF4b4b53);
Color grey400 = const Color(0xFF6d6d75);

BoxShadow primaryShadow = BoxShadow(
  blurRadius: 5,
  color: grey400.withOpacity(0.3),
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: white,
  fontWeight: regular,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: black,
  fontWeight: regular,
);

TextStyle eduPelitaTextStyle = GoogleFonts.comfortaa(
  color: black,
  fontWeight: regular,
);

Future<void> urlLauncher(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
