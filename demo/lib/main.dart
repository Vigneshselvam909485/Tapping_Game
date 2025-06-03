import 'package:flutter/material.dart';                                                                             

void main () {
  runApp(MaterialApp(
    home: Mainpage()));
}
class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  
  @override
  Widget build(BuildContext context) {
     debugShowCheckedModeBanner: false;
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,

            child: Center(
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Gamepage()),
                  );
                },
                color: Colors.white,
                shape: CircleBorder(),
                height: 150,
                minWidth: 150,
                textColor: const Color.fromARGB(255, 15, 10, 10),
                child: Text("START"),
              ),
            ),

          ),
          Container(
            color: Colors.pink,
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,

            child: Center(
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Gamepage()));
                },
                color: Colors.white,
                shape: CircleBorder(),
                height: 150,
                minWidth: 150,
                textColor: const Color.fromARGB(255, 15, 10, 10),
                child: Text("START"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// This is a simple Flutter application that creates a main page with two containers.
// The first container is blue and the second is pink, each containing a centered button labeled "START".
// The buttons are styled with a white background, circular shape, and specific text color.
class Gamepage extends StatefulWidget {
  const Gamepage({super.key});

  @override
  State<Gamepage> createState() => _GamepageState();  
}

class _GamepageState extends State<Gamepage> {
  double PLAYER_A_SCORE = 0;
  double PLAYER_B_SCORE = 0;

  int PLAYER_A_SCORE_INT = 0;
  int PLAYER_B_SCORE_INT = 0;

  bool isPlayer = false;
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;

     if (isPlayer==false) {
      PLAYER_A_SCORE = MediaQuery.of(context).size.height / 2;
      PLAYER_B_SCORE = MediaQuery.of(context).size.height / 2;
     }
     isPlayer = true;
    return Scaffold(
      body: Column(
            children: [
              
               MaterialButton(
                onPressed: () {
                  setState(() {
                    PLAYER_A_SCORE = PLAYER_A_SCORE + 10;
                    PLAYER_B_SCORE = PLAYER_B_SCORE - 10;
                    PLAYER_A_SCORE_INT = PLAYER_A_SCORE_INT + 5;
                  });
                  double screenHeight = MediaQuery.of(context).size.height;
                  double winningScore = MediaQuery.of(context).size.height -60;
                  print(winningScore);
                  print(PLAYER_A_SCORE);
                  if (PLAYER_A_SCORE > winningScore) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Resultpage(PLAYER_A_SCORE_INT, "PLAYER A WINS")),
                    );
                  }

                },
                 child: Container(
                  height: PLAYER_A_SCORE,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 220, 55, 55),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                             
                  child: Row(
                    children: [
                      Expanded(child: Text("PLAYER A" ,
                       style: TextStyle
                       (fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white),)), 
                       Text(PLAYER_A_SCORE_INT.toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                               ),
               ),


              MaterialButton(
                onPressed: () {
                  setState(() {
                    PLAYER_B_SCORE = PLAYER_B_SCORE + 10;
                    PLAYER_A_SCORE = PLAYER_A_SCORE - 10;
                    PLAYER_B_SCORE_INT = PLAYER_B_SCORE_INT + 5;
                  });
                  double winningScore = MediaQuery.of(context).size.height -60;
                  print(winningScore);
                  print(PLAYER_B_SCORE);

                  if (PLAYER_B_SCORE> winningScore){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Resultpage(PLAYER_B_SCORE_INT, "PLAYER B WINS")),
                    );
                  }
                },
                child: Container(
                  height: PLAYER_B_SCORE,
                  width: double.infinity,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 224, 191, 46),
                            
                  child: Row(
                    children: [
                      Expanded(child: Text("PLAYER B" ,
                       style: TextStyle
                       (fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white),)), 
                       Text(PLAYER_B_SCORE_INT.toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),)
                    ],
                  ),
                ),
              )
              
            ],
          ),
    );
    
  }
}
// This code defines a Flutter application with a main page and a game page.
class Resultpage extends StatelessWidget {
  int score =0;
  String winner = "";
  Resultpage(this.score,this.winner);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: winner == "PLAYER A WINS" ? Colors.red : Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(score.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 237, 225, 225)
              ),
            ),
            Text(winner== "PLAYER A WINS" ? "PLAYER A WINS" : "PLAYER B WINS",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 7, 10, 12)
              ),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mainpage()),
              );
            },
            color: const Color.fromARGB(255, 237, 234, 234),
            child: Text("Restart Game" ) ,)
            
          ],
        ),
      )
    );
  }
}
