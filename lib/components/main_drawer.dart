import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(icon, size: 24),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20.0,
            fontWeight: FontWeight.w600),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Lets cook?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                color: Colors.yellowAccent,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(
            Icons.restaurant,
            'Recipes',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)
          ),
          _createItem(
            Icons.settings,
            'Settings',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)
          ),
        ],
      ),
    );
  }
}
