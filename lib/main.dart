import 'package:flutter/material.dart';
import 'package:job/Screens/Job_list_screen.dart';
import 'package:job/Screens/Login_screen.dart';
import 'package:job/Screens/Registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const JobList(),
        routes: {
          RegistrationScreen.routeName: (context) => RegistrationScreen(),
        });
  }
}
