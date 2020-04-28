// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import "dart:math";

import './textcontrol.dart';
import './text.dart';


void main() => runApp(MyApp());

var quoteList = [
  'What I\'ve learned is that real change is very, very hard. But I\'ve also learned that change is possible - if you fight for it.', 
  'Part of my job is to make sense of all that I hear, and to retell it in a forceful way so that the decision-makers at Treasury can hear it. At least that\'s how I see it.', 
  'The core of my career is my teaching and my writing.',
  'And that\'s how we build the economy of the future. An economy with more jobs and less debt, we root it in fairness. We grow it with opportunity. And we build it together.',
  'Writing laws based on an abstract theory, rather than reality, is a dangerous undertaking.',
  'We cannot run a democracy without a strong middle class.',
  'I\'m willing to throw my body in front of the bus to stop bad ideas.',
  'A good education is a foundation for a better future.',
  'There are very few people at the decision-making table to argue for minimum-wage workers. Very few people.',
  'In America today, a young person needs more education after high school just to have a chance to make it in the middle class. Not a guarantee, just a chance to make it.',
  'Choose to fight only righteous fights, because then when things get tough — and they will — you will know that there is only one option ahead of you: Nevertheless, you must persist.',
  'Our work continues, the fight goes on, and big dreams never die.',
  ];
final _random = new Random();
var warrenQuote = 'Click for a quote from Elizabeth Warren!';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void quoteButton(){
    setState(() {
      warrenQuote = quoteList[_random.nextInt(quoteList.length)];
    });
    print(warrenQuote);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Elizabeth Warren Quotapalooza!', style: TextStyle(color: Colors.white, fontSize: 22,)),
        backgroundColor: Colors.teal,
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/elizabeth_warren.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Quote(warrenQuote),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpdateQuote(quoteButton),
        ),
      ],),
      ),
      
    );
  } 
}

