import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_katkemsos/style/style.dart';

class STIcon {
  static final Widget ads = new SvgPicture.asset('assets/svgs/ads.svg', semanticsLabel: 'ads',);
  static final Widget whiteLogo = new SvgPicture.asset('assets/svgs/logo-white.svg', semanticsLabel: 'white logo',);
  static final Widget logo = new SvgPicture.asset('assets/svgs/logo.svg', semanticsLabel: 'logo',);
  static final Widget arrowDown = new SvgPicture.asset('assets/svgs/arrow-down.svg', semanticsLabel: 'arrow down', color: Style.darkindigo,);
  static final Widget arrowLeft = new SvgPicture.asset('assets/svgs/arrow-left.svg', semanticsLabel: 'arrow left', color: Style.darkindigo,);
  static final Widget arrowRight = new SvgPicture.asset('assets/svgs/arrow-right.svg', semanticsLabel: 'arrow right', color: Style.darkindigo,);
  static final Widget backToTop = new SvgPicture.asset('assets/svgs/back-to-top.svg', semanticsLabel: 'arrow right', color: Style.darkindigo,);
  static final Widget bookmark = new SvgPicture.asset('assets/svgs/bookmark.svg', semanticsLabel: 'back to top', color: Style.green,);
  static final Widget menu = new SvgPicture.asset('assets/svgs/menu.svg', semanticsLabel: 'menu');
  static final Widget eye = new SvgPicture.asset('assets/svgs/eye.svg', semanticsLabel: 'eye', color: Style.cloudyblue,);
  static final Widget rack = new SvgPicture.asset('assets/svgs/rack.svg', semanticsLabel: 'rack', color: Style.cloudyblue,);
  static final Widget bell = new SvgPicture.asset('assets/svgs/bell.svg', semanticsLabel: 'bell', color: Style.cloudyblue,);
  static final Widget image = new SvgPicture.asset('assets/svgs/image.svg', semanticsLabel: 'image', color: Style.cloudyblue,);
  static final Widget moon = new SvgPicture.asset('assets/svgs/moon.svg', semanticsLabel: 'moon', color: Style.cloudyblue,);
  static final Widget sun = new SvgPicture.asset('assets/svgs/sun.svg', semanticsLabel: 'sun', color: Style.cloudyblue,);
  static final Widget facebook = new SvgPicture.asset('assets/svgs/facebook.svg', semanticsLabel: 'facebook',);
  static final Widget google = new SvgPicture.asset('assets/svgs/google.svg', semanticsLabel: 'google',);
  static final Widget mail = new SvgPicture.asset('assets/svgs/mail.svg', semanticsLabel: 'mail',);
  static final Widget share = new SvgPicture.asset('assets/svgs/share.svg', semanticsLabel: 'share', color: Style.green,);
  static final Widget search = new SvgPicture.asset('assets/svgs/search.svg', semanticsLabel: 'search', color: Style.green,);
  static final Widget setting = new SvgPicture.asset('assets/svgs/setting.svg', semanticsLabel: 'setting', color: Style.darkindigo,);
  static final Widget vote = new SvgPicture.asset('assets/svgs/vote.svg', semanticsLabel: 'vote',);
  static final Widget preferences = new SvgPicture.asset('assets/svgs/preferences.svg', semanticsLabel: 'preferences',);
  static final Widget correct = new SvgPicture.asset('assets/svgs/correct.svg', semanticsLabel: 'correct', color: Style.green,);
  static final Widget incorrect = new SvgPicture.asset('assets/svgs/correct.svg', semanticsLabel: 'correct', color: Style.transparent,);
  static final Widget allnews = new SvgPicture.asset('assets/svgs/categories/all-news.svg', semanticsLabel: 'all news',);
  static final Widget myfeed = new SvgPicture.asset('assets/svgs/categories/my-feed.svg', semanticsLabel: 'my feed',);
  static final Widget topstories = new SvgPicture.asset('assets/svgs/categories/top-stories.svg', semanticsLabel: 'top stories',);
}
