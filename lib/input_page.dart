import 'package:bmi_calculator_flutter_24/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80;
const activeCardColor = Colors.blueGrey;
const inactiveCardColor = Colors.grey;
const bottomContainerColor = Colors.pink;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
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
                      child: ReusableCard(
                        colour: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Expanded(
            //   child: ReusableCard(
            //     colour: activeCardColor,
            //   ),
            // ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: ReusableCard(
            //           colour: activeCardColor,
            //         ),
            //       ),
            //       Expanded(
            //         child: ReusableCard(
            //           colour: activeCardColor,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
