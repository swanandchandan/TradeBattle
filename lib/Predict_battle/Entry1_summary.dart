import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab2.dart';

class Entry_summary extends StatefulWidget {
  const Entry_summary({super.key});

  @override
  State<Entry_summary> createState() => _Entry_summaryState();
}

class _Entry_summaryState extends State<Entry_summary> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.10,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(11),
                        topRight: Radius.circular(11))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Entry 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 4),
                      blurRadius: 7.5,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.53,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: screenWidth * 0.04,
                      top: screenHeight * 0.46,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: screenWidth * 0.84,
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Text(
                                "close",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.025,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
