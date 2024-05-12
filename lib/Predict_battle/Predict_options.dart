import 'package:flutter/material.dart';

class QuizOption extends StatefulWidget {
  @override
  _QuizOptionState createState() => _QuizOptionState();
}

class _QuizOptionState extends State<QuizOption> {
  Color _containerColor = Colors.grey; // Initial color
  bool _isOptionSelected = false; // Flag to track if option is selected

  void onTap() {
    if (!_isOptionSelected) {
      setState(() {
        // Change color when tapped
        _containerColor = Colors.blue;
        _isOptionSelected = true; // Set flag to true once selected
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
