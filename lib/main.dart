import 'package:flutter/material.dart';

import 'screens/settings_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/errors/route_not_found_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6:
                  TextStyle(fontSize: 20.0, fontFamily: 'RobotoCondensed'),
            ),
      ),
      routes: {
        AppRoutes.HOME: (_) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (_) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (_) => MealDetailSreen(),
        AppRoutes.SETTINGS: (_) => SettingsScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return RouteNotFound();
          },
        );
      },
    );
  }
}
