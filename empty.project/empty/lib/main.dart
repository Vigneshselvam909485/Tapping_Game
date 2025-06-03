import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text("Resturants menu"),backgroundColor: Colors.orange,centerTitle: false,titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 30, 29, 29),  
          ),
        ),

        body: Column(
          children: [
        Container(
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
             ),


            height: 90,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold ),),
              Text("Delicious chicken noodles with spicy sauce"),
              Text("Price: \$10",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
             ),


            height: 90,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold ),),
              Text("Delicious chicken noodles with spicy sauce"),
              Text("Price: \$10",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
             ),


            height: 90,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold ),),
              Text("Delicious chicken noodles with spicy sauce"),
              Text("Price: \$10",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
             ),


            height: 90,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("chicken noodles",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold ),),
              Text("Delicious chicken noodles with spicy sauce"),
              Text("Price: \$10",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
          ],
        )
      ),
    );
  }
}
