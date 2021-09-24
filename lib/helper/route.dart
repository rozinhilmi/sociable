import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sociable/Pages/Login/loginPage.dart';
import 'package:sociable/Pages/splash.dart';

class Routes {
  static const String SPLASH = '/splash';
  static const String LOGIN = '/login';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case LOGIN:
      // return PageTransition(child: LoginPage(), type: PageTransitionType.leftToRight);
      // case ADD_BERITA:
      //   return PageTransition(child: TambahBerita(), type: PageTransitionType.leftToRight);
      // case ROOM_KONSUL:
      //   return PageTransition(child: DetailChat(), type: PageTransitionType.leftToRight);
      // case TAB:
      //   return PageTransition(
      //       child: Tabs(
      //         indexPage: settings.arguments,
      //       ),
      //       type: PageTransitionType.leftToRight);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('Page ${settings.name} not defined'),
                  ),
                ));
    }
  }
}
