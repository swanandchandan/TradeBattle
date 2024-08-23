import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Current_balace.dart';
import 'package:trade_battle_application/Predict_battle/Entry1_summary.dart';
import 'package:trade_battle_application/Predict_battle/Fee_breakdown.dart';
import 'package:trade_battle_application/Predict_battle/First_entry.dart';
import 'package:trade_battle_application/Predict_battle/Multiplier_screen.dart';
import 'package:trade_battle_application/Predict_battle/Post_deletion_screen.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab2.dart';
import 'package:trade_battle_application/Predict_battle/Quiz_template.dart';
import 'package:trade_battle_application/Predict_battle/workshop_screens.dart';

class Entry_Fee_screen extends StatefulWidget {
  const Entry_Fee_screen({super.key});

  @override
  State<Entry_Fee_screen> createState() => _Entry_Fee_screenState();
}

class _Entry_Fee_screenState extends State<Entry_Fee_screen> {
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
                                builder: (context) => const Multiplier_screen(),
                              ),
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
                                      height: screenHeight * 0.0033,
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
                                      color: Colors.black,
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.0033,
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
                                        "join",
                                        style: TextStyle(
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
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
                              // ignore: prefer_const_constructors
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      15,
                                      15,
                                      15,
                                      0,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            const Text(
                                              "Entry Fee",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "(Per Entry)",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      screenHeight * 0.015),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.03,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Fee_breakdown()),
                                            );
                                          },
                                          child: const Icon(Icons.info_outlined,
                                              size: 20),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Image.asset(
                                          'assets/images/TBcurrency.png',
                                          width: 25,
                                          height: screenHeight * 0.05,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.01,
                                        ),
                                        Text(
                                          "1,500",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: screenHeight * 0.025,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Entry 1",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(0, 211, 169, 1),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Current_Balance(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: screenWidth * 0.20,
                                            height: screenHeight * 0.030,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "View Entry",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.01,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Entry_summary()),
                                            );
                                          },
                                          child: Container(
                                            width: screenWidth * 0.12,
                                            height: screenHeight * 0.030,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  255, 81, 53, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Icon(
                                              Icons.delete_forever,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "My Coins",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Text(
                                            "-1,500",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Bonus Coins",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Text(
                                            "0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 22),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(),
                                            child: Image.asset(
                                              'assets/images/Vector 150.png',
                                              color: Colors.grey,
                                              width: screenWidth * 0.12,
                                              height: screenHeight * 0.002,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 05, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Entry 1",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(0, 211, 169, 1),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Workshop_MobileLayout(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: screenWidth * 0.20,
                                            height: screenHeight * 0.030,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "View Entry",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.01,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Post_deletion_screen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: screenWidth * 0.12,
                                            height: screenHeight * 0.030,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  255, 81, 53, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Icon(
                                              Icons.delete_forever,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "My Coins",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Text(
                                            "-1,500",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Bonus Coins",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Text(
                                            "0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: screenWidth * 0.88,
                                        height: screenHeight * 0.08,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              0, 211, 169, 1),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 0.03,
                                            ),
                                            const Text(
                                              "Total",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            Image.asset(
                                              'assets/images/TBcurrency.png',
                                              width: 25,
                                              height: screenHeight * 0.05,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            Text(
                                              "3,000",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.025,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.03,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Container(
                              width: screenWidth * 0.92,
                              height: screenHeight * 0.20,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(234, 255, 251, 1)
                                    .withOpacity(0.9),
                                border: Border.all(
                                  color: const Color.fromRGBO(0, 211, 169, 1),
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2.5,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: Row(
                                        children: [
                                          const Column(
                                            children: [
                                              Text(
                                                "Current Balance",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.03,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                Icons.info_outlined,
                                                size: 20),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Image.asset(
                                            'assets/images/TBcurrency.png',
                                            width: 25,
                                            height: screenHeight * 0.05,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.01,
                                          ),
                                          Text(
                                            "8,500",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: screenHeight * 0.025,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 6),
                                      child: Row(
                                        children: [
                                          const Text(
                                            "My Coins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 2),
                                            child: Text(
                                              "-750",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Color.fromRGBO(
                                                    255, 81, 53, 1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 6),
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Bonus Coins",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Color.fromRGBO(
                                                    255, 81, 53, 1),
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: screenWidth * 0.02,
              top: screenHeight * 0.88,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.92,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        const Text(
                          "Add More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(
                          width: screenWidth * 0.01,
                        ),
                        Text(
                          "+",
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "300",
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.01,
                        ),
                        Text(
                          "Coins",
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/TBcurrency.png',
                            width: 25,
                            height: screenHeight * 0.05,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //  Positioned(
    //    left: screenWidth * 0.04,
    //    top: screenHeight * 0.83,
    //    child: Container(
    //      width: screenWidth * 0.92,
    //      height: screenHeight * 0.04,
    //      decoration: BoxDecoration(
    //        color:
    //            const Color.fromARGB(255, 210, 227, 224).withOpacity(0.9),
    //        borderRadius: BorderRadius.circular(09),
    //        border: Border.all(
    //          color: const Color.fromRGBO(0, 211, 169, 1),
    //        ),
    //      ),
    //      child: Center(
    //        child: Text(
    //          "      Select Multiplier For Indivisual Entries",
    //          style: TextStyle(
    //            fontSize: screenHeight * 0.015,
    //            fontWeight: FontWeight.bold,
    //            color: const Color.fromARGB(255, 6, 6, 6),
    //          ),
    //        ),
    //      ),
    //    ),
    //  ),
    //  Positioned(
    //    left: screenWidth * 0.04,
    //    top: screenHeight * 0.88,
    //    child: GestureDetector(
    //      onTap: () {},
    //      child: Container(
    //        width: screenWidth * 0.92,
    //        height: screenHeight * 0.08,
    //        decoration: BoxDecoration(
    //          color: const Color.fromRGBO(0, 211, 169, 1),
    //          borderRadius: BorderRadius.circular(18),
    //        ),
    //        child: Row(
    //          crossAxisAlignment: CrossAxisAlignment.center,
    //          children: [
    //            SizedBox(
    //              width: screenWidth * 0.03,
    //            ),
    //            const Text(
    //              "Join",
    //              style: TextStyle(fontWeight: FontWeight.bold),
    //            ),
    //            Expanded(child: Container()),
    //            GestureDetector(
    //              onTap: () {},
    //              child: const Icon(Icons.arrow_right_alt),
    //            ),
    //            SizedBox(
    //              width: screenWidth * 0.03,
    //            ),
    //          ],
    //        ),
    //      ),
    //    ),
    //  ),
  }
}
