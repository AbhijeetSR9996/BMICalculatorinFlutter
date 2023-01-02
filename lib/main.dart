import 'package:flutter/material.dart';
import 'package:BMICalculator/bmi_screen.dart';
import 'dart:async';


void main(){
   runApp(const MyApp());
 }
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BMI_Screen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(10, 15, 30, 1.0),
      child: const Center(
        child: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}




