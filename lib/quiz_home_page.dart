import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './main.dart';

class QuizHome extends StatelessWidget {
  //const QuizHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.raleway().fontFamily,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Meme Quiz!!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontFamily: GoogleFonts.robotoCondensed().fontFamily,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'You think you are good at memes?? Test yourself!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: GoogleFonts.robotoCondensed().fontFamily,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (ctx) {
                return MyHome(title: 'Quiz');
              }));
            },
            child: Container(
              height: 50,
              width: 300,
              child: Center(
                child: Text(
                  'Bring it on!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                  ),
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
