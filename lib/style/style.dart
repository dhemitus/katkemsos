import 'package:flutter/material.dart';

class Style {

  static final Color bluebox = new Color(0xFF286AF1);
  static final Color redbox = new Color(0xFFB91122);
  static final Color oragebox = new Color(0xFFCC4203);
  static final Color badbluebox = new Color(0xFF0055AA);
  static final Color darkbluebox = new Color(0xFF0044A9);
  static final Color pinkbox = new Color(0xFFCD44AA);

//  static final Color blue = new Color(0xFF017AF5);
  static final Color green = new Color(0xFF54CB4E);
  static final Color darkindigo = new Color(0xFF07133D);
  static final Color slategrey = new Color(0xFF5D6074);
  static final Color cloudyblue = new Color(0xFFC3C9E0);
  static final Color greylight = new Color(0xFFEFEFEF);
  static final Color verygreylight = new Color(0xFFF5F7F8);
  static final Color verybluelight = new Color(0xFFF6F9FE);


  static final Color white = Colors.white;
  static final Color black = Colors.black;
  static final Color transparent = Colors.transparent;

  static final double h7 = 12.5;

  static final FontWeight semibold = FontWeight.w600;
  static final FontWeight reguler = FontWeight.w400;
  static final FontWeight light = FontWeight.w300;

  static final regularTextStyle = new TextStyle(
    fontFamily: 'Metropolis',
    color: Colors.white,
    fontWeight: reguler
  );

  static final lightTextStyle = new TextStyle(
    fontFamily: 'Metropolis',
    color: Colors.white,
    fontWeight: light
  );

  static final semiboldTextStyle = new TextStyle(
    fontFamily: 'Metropolis',
    color: Colors.white,
    fontWeight: semibold
  );

  static final h1 = lightTextStyle.copyWith(
    fontSize: 96,
    letterSpacing: -1.5
  );

  static final h2 = lightTextStyle.copyWith(
    fontSize: 60,
    letterSpacing: -0.5
  );

  static final h3 = regularTextStyle.copyWith(
    fontSize: 48,
    letterSpacing: 0.0
  );

  static final h4 = regularTextStyle.copyWith(
    fontSize: 34,
    letterSpacing: 0.25
  );

  static final h5 = regularTextStyle.copyWith(
    fontSize: 24,
    letterSpacing: 0.0
  );

  static final h6 = semiboldTextStyle.copyWith(
    fontSize: 20,
    letterSpacing: 0.15
  );

  static final subTitle1 = regularTextStyle.copyWith(
    fontSize: 16,
    letterSpacing: 0.15
  );

  static final subTitle2 = semiboldTextStyle.copyWith(
    fontSize: 14,
    letterSpacing: 0.1
  );

  static final body1 = regularTextStyle.copyWith(
      fontSize: 16,
      letterSpacing: 0.5
  );

  static final body2 = regularTextStyle.copyWith(
    fontSize: 14,
    letterSpacing: 0.25
  );

  static final button = semiboldTextStyle.copyWith(
    fontSize: 14,
    letterSpacing: 1.25
  );

  static final caption = regularTextStyle.copyWith(
      fontSize: 12,
      letterSpacing: 0.4
  );

  static final overline = regularTextStyle.copyWith(
      fontSize: 10,
      letterSpacing: 0.5
  );

  static const Offset top = Offset(0.0, -03.0);
  static const Offset bottom = Offset(0.0, 08.0);
  static const Offset downbottom = Offset(0.0, 22.0);
}

List<Color> colorBox = [
  Style.bluebox,
  Style.redbox,
  Style.oragebox,
  Style.badbluebox,
  Style.darkbluebox,
  Style.pinkbox
];