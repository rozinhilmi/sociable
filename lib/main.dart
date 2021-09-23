import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Pages/Login/loginPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
