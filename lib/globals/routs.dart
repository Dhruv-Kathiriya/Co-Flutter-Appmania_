import 'package:app_ui/view/screens/home_screen/homescreen.dart';
import 'package:flutter/cupertino.dart';

import '../view/screens/Favorite/fav.dart';
import '../view/screens/cart_page/cartpage.dart';
import '../view/screens/details_page/details_page.dart';

class Routes {
  static String homePage = '/';
  static String detailPage = 'details_Page';
  static String cartPage = 'cartPage';
  static String likePage = 'likePage';
  static String favPage = 'favPage';

  static Map<String, WidgetBuilder> myRoutes = {
    homePage: (context) => const HomePage(),
    detailPage: (context) => const DetailsPage(),
    cartPage: (context) => const CartPage(),
    favPage: (context) => const FavPage(),
  };
}
