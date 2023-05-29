import 'package:flutter/material.dart';
import 'package:thomas_s_application2/presentation/search_screen/search_screen.dart';
import 'package:thomas_s_application2/presentation/home_screen/home_screen.dart';
import 'package:thomas_s_application2/presentation/details_screen/details_screen.dart';
import 'package:thomas_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String searchScreen = '/search_screen';

  static const String homeScreen = '/home_screen';

  static const String detailsScreen = '/details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        searchScreen: SearchScreen.builder,
        homeScreen: HomeScreen.builder,
        detailsScreen: DetailsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
