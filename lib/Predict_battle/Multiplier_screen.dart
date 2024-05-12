import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Entry_fee_screen.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab2.dart';
import 'package:trade_battle_application/Predict_battle/demo_entry.dart';

class Multiplier_screen extends StatefulWidget {
  const Multiplier_screen({super.key});

  @override
  State<Multiplier_screen> createState() => _Multiplier_screenState();
}

class _Multiplier_screenState extends State<Multiplier_screen> {
  int multiplierIndex = 3;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.02,
                        screenHeight * 0.02, screenWidth * 0.02, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                                       GestureDetector(
                 onTap: () {
                   Navigator.pop(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const FirstEntry()),
                   );
                 },
                 child: const Icon(Icons.arrow_back_ios, size: 20),
               ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Text(
                          "Predict Battle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: screenHeight * 0.030),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                            borderRadius: BorderRadius.circular(05),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Image.asset(
                                'assets/images/TBcurrency.png',
                                width: screenWidth * 0.05,
                                height: screenHeight * 0.05,
                              ),
                              Text(
                                "45,000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.04,
                                    fontWeight: FontWeight.w100),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.010,
                ),
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.36,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(234, 234, 234, 1),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                            child: Row(
                              children: [
                                Container(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.032,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(41, 41, 41, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Questions",
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Image.asset(
                                      'assets/images/Vector 150.png',
                                      color: const Color.fromARGB(255, 5, 5, 5),
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.005,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.032,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Multipler",
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Image.asset(
                                      'assets/images/Vector 150.png',
                                      color: const Color.fromRGBO(
                                          138, 138, 138, 1),
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.005,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.032,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(217, 217, 217, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "join",
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.normal,
                                          color: const Color.fromRGBO(
                                              138, 138, 138, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.08,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.28,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(74, 74, 74, 1),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.04,
                            screenHeight * 0.02,
                            screenWidth * 0.04,
                            screenHeight * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Image.asset(
                                    'assets/images/himaliyansage2.png',
                                    width: 75,
                                    height: screenHeight * 0.10,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Himalayan Sage",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Image.asset(
                                        'assets/images/Vector 150.png',
                                        color: Colors.white,
                                        width: 140,
                                        height: screenHeight * 0.01,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(),
                                          child: Image.asset(
                                            'assets/images/Spots.png',
                                            color: Colors.white,
                                            width: 15,
                                            height: screenHeight * 0.030,
                                          ),
                                        ),
                                        Text(
                                          "120",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenHeight * 0.016,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Text(
                                          "/200 spots",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenHeight * 0.016,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: screenHeight * 0.025,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        color: const Color.fromRGBO(
                                            0, 211, 169, 1),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: screenWidth * 0.02,
                                          ),
                                          Text(
                                            "Entry |",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: screenHeight * 0.018,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.01,
                                          ),
                                          Image.asset(
                                            'assets/images/TBcurrency.png',
                                            width: 13,
                                            height: screenHeight * 0.02,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.01,
                                          ),
                                          Text(
                                            "1,500",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: screenHeight * 0.018,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.02,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    height: 2,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            255, 177, 51, 1)),
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromRGBO(
                                        234, 234, 234, 0.35),
                                  ),
                                  width: screenWidth * 0.30,
                                  height: screenHeight * 0.10,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.010,
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                            'assets/images/trophy_icon.png',
                                            width: screenWidth * 0.10,
                                            height: screenHeight * 0.040),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.010,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "5,000",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenHeight * 0.030,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(05),
                                color: Colors.white.withOpacity(0.10),
                              ),
                              width: double.infinity,
                              height: screenHeight * 0.05,
                              child: Row(
                                children: [
                                  SizedBox(width: screenWidth * 0.04),
                                  Text(
                                    "Starts |",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.020,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 09:45",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenHeight * 0.025,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 81, 53, 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "23:54",
                                          style: TextStyle(
                                              fontSize: screenHeight * 0.020,
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.00,
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Text(
                                    "Ends |",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.020,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 15:45",
                                    style: TextStyle(
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.04),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(05),
                                color: Colors.black.withOpacity(0.10),
                              ),
                              width: double.infinity,
                              height: screenHeight * 0.05,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Single_entry.png',
                                      width: 11,
                                      height: screenHeight * 0.04,
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Single Entry",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/group.png',
                                      width: 13,
                                      height: screenHeight * 0.02,
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Flexible",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/cup.png',
                                      width: 13,
                                      height: screenHeight * 0.02,
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "45%",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Winners",
                                      style: TextStyle(
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.017,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        'assets/images/Vector 150.png',
                        color: const Color.fromRGBO(138, 138, 138, 1),
                        width: screenWidth * 0.35,
                        height: screenHeight * 0.003,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    Text(
                      "Entry 1",
                      style: TextStyle(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Image.asset(
                        'assets/images/Vector 150.png',
                        color: const Color.fromRGBO(138, 138, 138, 1),
                        width: screenWidth * 0.35,
                        height: screenHeight * 0.003,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.017,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: screenHeight * 0.50,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  "You Choose :",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  " Bullish",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
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
                                            color: const Color.fromRGBO(
                                                    0, 211, 169, 1)
                                                .withOpacity(0.10),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 211, 169, 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "200",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "Points",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.023,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 3;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 3
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "1.5X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 4;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 4
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "2X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 4
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  "You Choose :",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  " Bullish",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
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
                                            color: const Color.fromRGBO(
                                                    0, 211, 169, 1)
                                                .withOpacity(0.10),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 211, 169, 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "200",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "Points",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.023,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 3;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 3
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "1.5X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 4;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 4
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "2X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 4
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  "You Choose :",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  " Bullish",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
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
                                            color: const Color.fromRGBO(
                                                    0, 211, 169, 1)
                                                .withOpacity(0.10),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 211, 169, 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "200",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "Points",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.023,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 3;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 3
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "1.5X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 4;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 4
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "2X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 4
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  "You Choose :",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  " Bullish",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
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
                                            color: const Color.fromRGBO(
                                                    0, 211, 169, 1)
                                                .withOpacity(0.10),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 211, 169, 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "200",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "Points",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.023,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 3;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 3
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "1.5X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 4;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 4
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "2X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 4
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  "You Choose :",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  " Bullish",
                                                  style: TextStyle(
                                                    fontSize:
                                                        screenHeight * 0.020,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
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
                                            color: const Color.fromRGBO(
                                                    0, 211, 169, 1)
                                                .withOpacity(0.10),
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 211, 169, 1),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "200",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.025,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "Points",
                                                style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.023,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      0, 211, 169, 1),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 3;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 3
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "1.5X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.40,
                                          height: screenHeight * 0.07,
                                          child: TextButton(
                                            onPressed: () {
                                              multiplierIndex = 4;
                                              setState(() {});
                                            },
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  multiplierIndex == 4
                                                      ? const Color.fromRGBO(
                                                          0, 211, 169, 1)
                                                      : Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(06),
                                              ),
                                            ),
                                            child: Text(
                                              "2X",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: multiplierIndex == 4
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: screenWidth * 0.04,
              top: screenHeight * 0.83,
              child: Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.04,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 210, 227, 224).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(09),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 211, 169, 1),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Select multiplier for single entries",
                    style: TextStyle(
                      fontSize: screenHeight * 0.015,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.04,
              top: screenHeight * 0.88,
              child: GestureDetector(
                onTap: () {
                                                 Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => const Entry_Fee_screen()
                 
               ),
             );
                },
                child: Container(
                  width: screenWidth * 0.92,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 211, 169, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      const Text(
                        "Join",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.arrow_right_alt),
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
    );
  }
}
