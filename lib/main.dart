//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './quiz.dart';
import './results.dart';

//import './question.dart';

void main() => runApp(MyHome());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      title: 'Quiz',
      // theme: ThemeData(
      //   primarySwatch: Colors.deepOrange,
      //   fontFamily:
      //       GoogleFonts.darkerGrotesque(fontStyle: FontStyle.italic).toString(),
      // ),
    );
  }
}

class MyHome extends StatefulWidget {
  //const MyHome({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHome> {
  final _questions = [
    {
      'questionText': 'Meme is pronounced as ?',
      'answers': [
        {
          'ansText': 'May-May',
          'score': 0,
        },
        {
          'ansText': 'Meem',
          'score': 1,
        },
        {
          'ansText': 'MiMi',
          'score': 0,
        },
        {
          'ansText': 'None of the above',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'C# is pronounced as ?',
      'answers': [
        {
          'ansText': 'C-Hash',
          'score': 0,
        },
        {
          'ansText': 'Trending C',
          'score': 0,
        },
        {
          'ansText': 'C-Sharp',
          'score': 1,
        },
        {
          'ansText': 'C-Hashtag',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'Find the liar:',
      'answers': [
        {
          'ansText': 'Tommy',
          'score': 0,
        },
        {
          'ansText': 'CJ',
          'score': 0,
        },
        {
          'ansText': 'Both Tommy and CJ',
          'score': 0,
        },
        {
          'ansText': 'Mr.Lance',
          'score': 1,
        },
      ],
    },
    {
      'questionText': 'Who said "You cannot see me!"?',
      'answers': [
        {
          'ansText': 'Randy Orton',
          'score': 0,
        },
        {
          'ansText': 'Frodo',
          'score': 0,
        },
        {
          'ansText': 'John cena',
          'score': 1,
        },
        {
          'ansText': 'John Abraham',
          'score': 0,
        },
      ],
    },
    {
      'questionText':
          '"Omae wa mo shindairu" means zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz? ',
      'answers': [
        {
          'ansText': 'You are already dead!',
          'score': 1,
        },
        {
          'ansText': 'You dont know me!',
          'score': 0,
        },
        {
          'ansText': 'Ill kill you',
          'score': 0,
        },
        {
          'ansText': 'You cant see me!',
          'score': 0,
        },
      ],
    },
  ];

  var _index = 0;

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  var _totalScore = 0;
  void _handler(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.yellow[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
        ),
        scaffoldBackgroundColor: Colors.orange[100],
        fontFamily:
            GoogleFonts.darkerGrotesque(fontStyle: FontStyle.italic).fontFamily,
      ),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Quiz',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily:
                  GoogleFonts.darkerGrotesque(fontStyle: FontStyle.italic)
                      .toString(),
            ),
          ),
          centerTitle: true,
        ),
        //backgroundColor: Theme.of(context).primaryColorDark,
        body: _index < _questions.length
            ? Quiz(
                handler: _handler,
                questionIndex: _index,
                questions: _questions,
              )
            : Results(_totalScore.toString(), _resetQuiz),
      ),
    );
  }
}
