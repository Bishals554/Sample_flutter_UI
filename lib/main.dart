import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobfind_flutter/views/home.dart';

void main() {
  return runApp(Home());

}
  class Home extends StatelessWidget {
   
    @override
    Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: HomePage(),
      );
    }
  }
  
