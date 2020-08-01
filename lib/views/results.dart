import 'package:flutter/material.dart';
import 'package:Quiz_maker/widgets/widgets.dart';

class Results extends StatefulWidget {
  final int correct, incorrect, total;
  Results(
      {@required this.correct, @required this.incorrect, @required this.total});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.correct}/${widget.total}",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "You Answered ${widget.correct} Answers correctly and ${widget.incorrect} Answers incorrectly",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 14.0,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: blueButton(
                      context: context,
                      label: "Go to Home",
                      buttonWidth: MediaQuery.of(context).size.width / 2)),
            ],
          ),
        ),
      ),
    );
  }
}
