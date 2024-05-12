import 'dart:ui';

import 'package:flutter/material.dart';













class MyHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Stack(
        children: [
          // Blurred background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          // Main screen content
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Show the popup screen
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return PopupScreen();
                  },
                );
              },
              child: Text("Open Popup"),
            ),
          ),
        ],
      ),
    );
  }
}

class PopupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7, // Adjust height as needed
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Popup Content"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the popup
            },
            child: Text("Close"),
          ),
        ],
      ),
    );
  }
}
