import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ReusableChild.dart';
import 'ReusableCard.dart';

// move this code to the another file
const Color activeCardColor = Color(0xFF1D1E33);
const Color inActiveColor = Color(0xFF111328);
int height = 120;
const int weight = 120;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF0c1133),
            brightness: Brightness.light,
            scaffoldBackgroundColor: Color(0xFF0c1133),
            textTheme: TextTheme(
                body1: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
        home: BMIBody());
  }
}


enum Gender{
  male,
  female
}

class BMIBody extends StatefulWidget {
  @override
  _BMIBodyState createState() => _BMIBodyState();
}

class _BMIBodyState extends State<BMIBody> {

  Color maleCardColor = inActiveColor;
  Color femaleCardColor = inActiveColor;


  // enums :- The act of establishing the number of something.
  // 1: Male, 2: Female. As coded above.

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == Gender.male ? activeCardColor : inActiveColor,
                        cardChild: new ReusableCardChild(
                          title: Text("MALE"),
                          icon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ReusableCard(
                    color: selectedGender == Gender.female ? activeCardColor : inActiveColor,
                    cardChild: new ReusableCardChild(
                        title: Text("FEMALE"),
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                    ),
                  ),
                      ))
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: <Widget>[
                    Center(
                      child: Text("Height",
                      ),
                    ),

                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(height.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
                        ),

                        Text(' cm', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24,)),
                      ],
                    ),

                    SliderTheme(

                      data: SliderTheme.of(context).copyWith(
                        overlayColor: Colors.purple.shade400,
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.purple.shade600,
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 16),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15,
                        )

                      ),
                      child: Slider(

                        value: height.toDouble(),
                        min: 0,
                        max: 220,

                        inactiveColor: Colors.grey.shade500,
                        onChanged: (double newValue){
                          print(newValue.toString());
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableCard(
                      color: Color(0xFF1D1E33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Weight", style: TextStyle( fontSize: 23)),
                          Text(weight.toString(), style: TextStyle( fontSize: 40),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new RoundIconButton(),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(child:
                              Icon(Icons.add, color: Colors.white,),
                                backgroundColor: Colors.blue.shade900,
                              )
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                  Expanded(child: ReusableCard(color: Color(0xFF1D1E33))),
                ],
              ),
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: (){},
      fillColor: Colors.white,
      shape: CircleBorder(),
      constraints: BoxConstraints(
        minHeight: 55,
        minWidth: 55
      ),
    );
  }
}
