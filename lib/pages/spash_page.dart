import 'package:bibliaapp/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:bibliaapp/pages/home_page.dart';
import 'Dart:async';

class SpashPage extends StatefulWidget {
  @override
  _SpashPage createState() => _SpashPage();
}

class _SpashPage extends State<SpashPage> with SingleTickerProviderStateMixin {
  void handleTimeoutHome() {
    pushAndRemoveUntil(context, HomePage());
  }

  startTimeoutHome() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeoutHome);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeoutHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return new Center(
      child: new Image.asset('images/biblia.png'),
    );
  }
}
