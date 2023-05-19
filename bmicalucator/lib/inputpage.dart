import 'package:bmicalucator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resubale.dart';
import 'results.dart';
import 'calculate.dart';

const bottomcontainerheight = 80.0;
const activecardcolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);
const bottomcontainercolor = Colors.pink;
const KlabelTextstyle =
    TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.w900);
const kTextstyle = TextStyle(color: Color(0xFF8D8E98), fontSize: 16);
Gender? selectedGender;
int height = 180;
int weight = 80;
int age = 60;

enum Gender {
  male,
  female;
}
// void color() {}

class inputpage extends StatefulWidget {
  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  // late Gender selectedGender;

  //  Color malecardcolour = inactivecolor;
  // // Color femalecardcolour = inactivecolor;

  // void updatecolor(Gender selectedgender) {
  //   // male card pressed
  //   if (selectedgender ==Gender.male) {
  //     if (malecardcolour == inactivecolor) {
  //       malecardcolour = activecardcolor;
  //       femalecardcolour = inactivecolor;
  //     } else {
  //       malecardcolour = inactivecolor;
  //     }
  //   }
  //   if (selectedgender== Gender.female) {
  //     if (femalecardcolour == inactivecolor) {
  //       femalecardcolour = activecardcolor;
  //       malecardcolour = inactivecolor;
  //     } else {
  //       femalecardcolour = inactivecolor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        title: Text("BMI CALUCATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Resuablecard(
                        colour: selectedGender == Gender.male
                            ? activecardcolor
                            : inactivecolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Resuablecard(
                        colour: selectedGender == Gender.female
                            ? activecardcolor
                            : inactivecolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Resuablecard(
                colour: activecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelTextstyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: KlabelTextstyle,
                        ),
                        Text(
                          "cm",
                          style: kTextstyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 250.0,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Resuablecard(
                    colour: Color(0xFF1D1E33),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "weight",
                          style: kTextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KlabelTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color(0xff4c4f5e),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Icon(
                                  Icons.minimize_outlined,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Color(0xff4c4f5e),
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Resuablecard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kTextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: KlabelTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Icon(Icons.minimize_outlined),
                              ),
                              backgroundColor: Color(0xff4c4f5e),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                              backgroundColor: Color(0xff4c4f5e),
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      //     calculatorBrain calc =
                      // calculatorBrain(height: height, weight: weight);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => results(
                                  // bmiresults: calc.calculateBMI(),
                                  // resultText: calc.getresults(),
                                  // interpreation: calc.getInterpetion(),
                                  ))));
                    },
                    child: Text('CALUCLATE ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            color: bottomcontainercolor,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: bottomcontainerheight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: () {},
      shape: CircleBorder(),
      fillColor: Color(0xFF1D1E33),
    );
  }
}
