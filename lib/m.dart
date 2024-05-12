import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable to keep track of the selected button index
  int selectedButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Buttons Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Set the state to update the selected button index
                setState(() {
                  selectedButtonIndex = 1;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor:
                    selectedButtonIndex == 1 ? Colors.orange : null,
              ),
              child: Text(
                'Button 1',
                style: TextStyle(
                    color: selectedButtonIndex == 1 ? Colors.black : null),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Set the state to update the selected button index
                setState(() {
                  selectedButtonIndex = 2;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor:
                    selectedButtonIndex == 2 ? Colors.orange : null,
              ),
              child: Text(
                'Button 2',
                style: TextStyle(
                    color: selectedButtonIndex == 2 ? Colors.black : null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
