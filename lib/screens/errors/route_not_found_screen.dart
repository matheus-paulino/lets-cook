import 'package:flutter/material.dart';

class RouteNotFound extends StatelessWidget {
  const RouteNotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 Error'),
      ),
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}
