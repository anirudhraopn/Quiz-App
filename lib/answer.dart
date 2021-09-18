import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final Function buttonHandler;
  final String ansTxt;
  Answer(
    this.buttonHandler,
    this.ansTxt,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: RaisedButton(
          color: Theme.of(context).accentColor,
          // style: ButtonStyle(
          //   backgroundColor:
          //       MaterialStateProperty.all(Theme.of(context).accentColor),
          //   foregroundColor: MaterialStateProperty.all(Colors.black),
          //   elevation: MaterialStateProperty.all(5),
          //   enableFeedback: true,

          // ),
          onPressed: () {
            buttonHandler();
          },
          child: Text(
            ansTxt,
            style: TextStyle(
              fontSize: 25,
              fontFamily: GoogleFonts.robotoCondensed().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
