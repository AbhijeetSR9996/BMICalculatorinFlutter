import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:BMICalculator/bmi_screen.dart';
//import 'package:share_plus/share.dart';
import 'package:share/share.dart';

class BMIResultScreen extends StatelessWidget
{
  final bool isMale;
  final double result;
  final int age;

  BMIResultScreen({required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
        title:const Text(
          "BMI Result",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${isMale? 'Male':'Female'}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            Text(
              "Result: ${result.round()}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            Text(
              "Age: $age",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),

            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            //Share.share('hey! check out this new app https://play.google.com/store/search?q=pub%3ADivTag&c=apps');
                            Share.share('please checkout my app on https://play.google.com/store', subject: 'It is a bmi checking application!');
                          },
                          heroTag: 'age-',
                          mini: true,
                          child: const Icon(
                            Icons.share,
                          ),
                        ),
                        const SizedBox(width: 40,),
                        FloatingActionButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BMI_Screen(
                                  ),
                                )
                            );
                          },
                          heroTag: 'age+',
                          mini: true,
                          child: const Icon(
                            Icons.restart_alt,
                          ),
                        ),
                        const SizedBox(width: 40,),
                        FloatingActionButton(
                          onPressed: (){
                            SystemNavigator. pop();
                          },
                          heroTag: 'age+',
                          mini: true,
                          child: const Icon(
                            Icons.exit_to_app,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Color.fromARGB(255, 16, 19, 35),
                  //color: Color.fromARGB(255, 230, 20, 73),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}