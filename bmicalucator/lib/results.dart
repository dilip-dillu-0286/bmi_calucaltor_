import 'package:bmicalucator/calculate.dart';
import 'package:bmicalucator/inputpage.dart';
import 'package:bmicalucator/resubale.dart';
import 'package:flutter/material.dart';
import 'resubale.dart';

const rTextstyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const Ctextstyle =
    TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green);
const bmiTextstyle = TextStyle(fontSize: 100, fontWeight: FontWeight.bold);
const bodtTextstyle = TextStyle(fontSize: 22);

class results extends StatelessWidget {
  results({@required this.interpreation, this.bmiresults, this.resultText});
  final bmiresults;
  final resultText;
  final interpreation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text("BMI CALUCALTOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "YOUR RESULTS",
                style: rTextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Resuablecard(
              colour: activecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("NORMAL", style: Ctextstyle),
                  Text(
                    "18.3",
                    style: bmiTextstyle,
                  ),
                  Text(
                    "your bmi result is quite low, you should eat more",
                    textAlign: TextAlign.center,
                    style: bodtTextstyle,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
            onTap: () {
              // calculatorBrain calc =
              //     calculatorBrain(height: height, weight: weight);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

class Bottombutton extends StatelessWidget {
  Bottombutton({@required this.onTap});
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Text('RE-CALUCLATE ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      color: bottomcontainercolor,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: bottomcontainerheight,
    );
  }
}
