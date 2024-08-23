import 'package:flutter/material.dart';
import 'package:trade_battle_application/App_ELEments/Ans_Options.dart';
import 'package:trade_battle_application/Predict_battle/Predict_options.dart';

class question_tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final List<String> answerOptions = [
      'Option 1',
      'Option 2',
      'Option 3',
      'Option 4'
    ];
    return Container(
      width: screenWidth * 0.92,
      height: screenHeight * 0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1.",
                  style: TextStyle(
                    fontSize: screenHeight * 0.020,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nifty movement",
                      style: TextStyle(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          "2.75",
                          style: TextStyle(
                            fontSize: screenHeight * 0.020,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(0, 211, 169, 1),
                          ),
                        ),
                        Text(
                          "%",
                          style: TextStyle(
                              fontSize: screenHeight * 0.020,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(0, 211, 169, 1)),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Text(
                          "4000",
                          style: TextStyle(
                              fontSize: screenHeight * 0.020,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(0, 211, 169, 1).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 211, 169, 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "200",
                        style: TextStyle(
                          fontSize: screenHeight * 0.025,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(0, 211, 169, 1),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        "Points",
                        style: TextStyle(
                          fontSize: screenHeight * 0.023,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(0, 211, 169, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: answerOptions.length,
                itemBuilder: (context, index) {
                  return Option2(
                    screenHeight: MediaQuery.of(context).size.height,
                    lable: answerOptions[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
