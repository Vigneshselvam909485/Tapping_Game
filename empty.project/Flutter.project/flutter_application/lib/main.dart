import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatefulWidget {
   const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   double size =0;
  String input_value = "";
  String get_value = "";
  String operator = "";
  @override
  Widget build(BuildContext context) {
    //* this mediaquery well assign the height/ width //*
     size = MediaQuery.of(context).size.width / 5;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.bottomRight,
              child: Text(input_value,
              style: TextStyle(color: Colors.white,fontSize: 100),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [            
               claculButton("7", Colors.white38),
               claculButton("8", Colors.white38),
               claculButton("9", Colors.white38),
               claculButton("/", Colors.orange),
                  ],
                ),
                Row(
                  children: [            
               claculButton("4", Colors.white38),
               claculButton("5", Colors.white38),
               claculButton("6", Colors.white38),
               claculButton("*", Colors.orange),
                  ],
                ),
                Row(
                  children: [            
               claculButton("1", Colors.white38),
               claculButton("2", Colors.white38),
               claculButton("3", Colors.white38),
               claculButton("-", Colors.orange),
                  ],
                ),
                Row(
                  children: [            
               claculButton("0", Colors.white38),
               claculButton(".", Colors.white38),
               claculButton("=", Colors.white38),
               claculButton("+", Colors.orange),
                  ],
                ),
              ],
            ),
            claculButton("Clear", const Color.fromARGB(255, 5, 5, 5)),
          ],
        ),
      ),
    );
  }

  Widget claculButton( String txt , Color bgcolor){
    return InkWell(
      onTap: (){
        setState(() {
          if (txt == "Clear"){
            input_value = "";
            get_value = "";
            operator = "";
          }
          else if (txt == "+" || txt == "-" || txt == "*" || txt == "/"){
            get_value = input_value;
            input_value = "";
            operator = txt;
            
          }
          else if(txt == "="){
          double input = double.parse(get_value);
          double get = double.parse(input_value);
          if (operator == "+"){
            input_value = (input + get).toString();
          }
          else if (operator == "-"){
            input_value = (input - get).toString();
          }
          else if (operator == "*"){
            input_value = (input * get).toString();
          }
          else if (operator == "/"){
            input_value = (input / get).toString();
          }
          }
          else{
            input_value += txt;
          }
        });
      },
      child:  Container(
                decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: BorderRadius.circular(100),
                ),
                height: size,
                width: size,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child:  Text(txt,
                style: TextStyle(color:Colors.white,fontSize: 30),
                ),
               ), 
    );
  
    }
}
// ignore: unused_element