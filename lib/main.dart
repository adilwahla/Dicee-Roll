import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber=1;
  int rightdiceNumber=1;
  void ChangeDiceFace(){
    setState(() {
      leftdiceNumber=Random().nextInt(6)+1;
      rightdiceNumber=Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(


        children: <Widget>[
          Expanded(


            child: FlatButton(
              onPressed: () {
                print('Left Button is Pressed');
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),

          Expanded(

            child: FlatButton(
              child: Image.asset('images/dice$rightdiceNumber.png'),
              onPressed: () {
                print('Right button is just Pressed');
                ChangeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}

    /*stateless   */

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var diceNumber=1;
//    return Center(
//      child: Row(
//
//
//         children: <Widget>[
//          Expanded(
//
//
//            child: FlatButton(
//              onPressed: () {
//                print('Left Button is Pressed');
//              },
//              child: Image.asset('images/dice$diceNumber.png'),
//            ),
//          ),
//
//           Expanded(
//
//             child: FlatButton(
//               child: Image.asset('images/dice2.png'),
//               onPressed: () {
//                 print('Right button is just Pressed');
//               },
//             ),
//           ),
//   ],
//      ),
//    );
//  }
//}

