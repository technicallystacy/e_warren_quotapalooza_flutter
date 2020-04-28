import 'package:flutter/material.dart';

import 'main.dart';

class Quote extends StatelessWidget {
  final String warrenQuote;
  
  Quote(this.warrenQuote); 

  @override
  Widget build(BuildContext context) {
    return Text(warrenQuote, style: TextStyle(fontSize: 22,));
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () => setState(() => _count++),
    //   tooltip: 'Increment Counter',
    //   child: const Icon(Icons.add),
    // ),
  }
}

