import 'package:flutter/material.dart';

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
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.yellow[100]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: () {
            buttonHandler();
          },
          child: Text(
            ansTxt,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
