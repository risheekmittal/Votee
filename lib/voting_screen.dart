import 'package:flutter/material.dart';

class VotingScreen extends StatelessWidget {

  int voteA=0;
  int voteB=0;
  int voteC=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Center(
              child: TextButton(
                onPressed: (){
                  voteA=1;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                    voteA: voteA,
                    voteB: voteB,
                    voteC: voteC,
                  )));
                },
                child: const Text('A', style: TextStyle(fontSize: 50.0),),
              ),
            ),
          Center(
            child: TextButton(
              onPressed: (){
                voteB=1;
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                  voteA: voteA,
                  voteB: voteB,
                  voteC: voteC,
                )));
              },
              child: const Text('B', style: TextStyle(fontSize: 50.0),),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: (){
                voteC=1;
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                  voteA: voteA,
                  voteB: voteB,
                  voteC: voteC,
                )));
              },
              child: const Text('C', style: TextStyle(fontSize: 50.0),),
            ),
          )
        ],
      ),
    );
  }
}

class ResultsPage extends StatelessWidget {
  ResultsPage ({required this.voteA, required this.voteB, required this.voteC});
   int voteA=0;
   int voteB=0;
   int voteC=0;


  String getResult() {
    if(voteA>voteB) {
      if (voteA > voteC) {
        return "Team A wins";
      }
      else{
        return "Team C wins";
      }
    }
    else {
      return "Team B wins";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Sample Code'),
    ),
    body : Column(
      mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(getResult(), style: const TextStyle(
      fontSize: 50.0,
    ),),
            )
    ],
    )
    );
  }
}
