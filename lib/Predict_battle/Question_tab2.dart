import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Predict_options.dart';

class question_tab2 extends StatelessWidget {
  const question_tab2({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
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
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 19, 18, 18).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      "Bullish",
                      style: TextStyle(
                        fontSize: screenHeight * 0.023,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 19, 18, 18).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      "Bearish",
                      style: TextStyle(
                        fontSize: screenHeight * 0.023,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 19, 18, 18).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      "Bearish",
                      style: TextStyle(
                        fontSize: screenHeight * 0.023,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 19, 18, 18).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      "Bearish",
                      style: TextStyle(
                        fontSize: screenHeight * 0.023,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
