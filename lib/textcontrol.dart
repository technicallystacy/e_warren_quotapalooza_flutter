import 'package:flutter/material.dart';

import 'main.dart';

class UpdateQuote extends StatelessWidget {
  final Function updateQuote;

  UpdateQuote(this.updateQuote);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        textColor: Colors.white,
        child: Text('Click for a new quote!', style: TextStyle(fontSize: 22,)),
        onPressed: updateQuote,
      ),
    );
  }
}

