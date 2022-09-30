import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kprimeColor = Color.fromARGB(255, 247, 206, 72);
const Color kwhiteColor = Color(0xffffffff);
const Color kblackColor = Color.fromARGB(255, 116, 116, 116);
const Color kpinkColor = Color.fromARGB(255, 255, 0, 0);
const Color kgreyColor = Color(0xff8A959E);
const Color greenColor = Color.fromARGB(255, 27, 108, 119);
const kbackground = LinearGradient(
  colors: [
    Color(0xff608EC6),
    Color(0xff352A7C),
  ],
);

TextStyle whiteStyle = GoogleFonts.poppins(
  color: kwhiteColor,
);

TextStyle blackStyle = GoogleFonts.poppins(
  color: kblackColor,
);
TextStyle yellowStyle = GoogleFonts.poppins(
  color: kprimeColor,
);
TextStyle greykStyle = GoogleFonts.poppins(
  color: kgreyColor,
);
TextStyle redkkStyle = GoogleFonts.poppins(
  color: kpinkColor,
);
TextStyle boldStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
);
TextStyle extraBoldStyle = GoogleFonts.poppins(
  color: kblackColor,
  fontWeight: FontWeight.w800,
);

TextStyle greenBlueStyle = GoogleFonts.poppins(
  color: greenColor,
);
