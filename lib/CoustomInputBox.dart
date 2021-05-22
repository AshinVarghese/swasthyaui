import 'package:flutter/material.dart';

class MyCoustomInputBox extends StatefulWidget {
  String label;
  String inputHint;
  MyCoustomInputBox({this.label, this.inputHint});

  @override
  _MyCoustomInputBoxState createState() => _MyCoustomInputBoxState();
}

class _MyCoustomInputBoxState extends State<MyCoustomInputBox> {
  bool isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              widget.label,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(hintText: widget.inputHint),
          ),
        )
      ],
    );
  }
}
