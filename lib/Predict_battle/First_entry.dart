import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Multiplier_screen.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab2.dart';
import 'package:trade_battle_application/Responsive/Homepage.dart';

class First_entry extends StatefulWidget {
  const First_entry({super.key});

  @override
  State<First_entry> createState() => _First_entryState();
}

class _First_entryState extends State<First_entry> {
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
                                  builder: (context) => const MobileLayout()),
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
                                      color: const Color.fromRGBO(
                                          217, 217, 217, 1),
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
                                        "Multipler",
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
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Image.asset(
                                      'assets/images/Vector 150.png',
                                      color: const Color.fromRGBO(
                                          217, 217, 217, 1),
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
                  height: screenHeight * 0.02,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight * 0.53,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            question_tab2(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            question_tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            question_tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
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
                    "                          You Have Upto 2 Entries \nNote: Multiple Entries Has A Higher Probability Of Winning",
                    style: TextStyle(
                      fontSize: screenHeight * 0.015,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 6, 6, 6),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.04,
              top: screenHeight * 0.88,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenWidth * 0.40,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 81, 53, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "No. of\nEntries",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.020),
                        ),
                        // Container(
                        //   decoration: const BoxDecoration(),
                        //   child: Image.asset(
                        //     'assets/images/Vector 191.png',
                        //     color: Colors.black,
                        //     width: screenWidth * 0.12,
                        //     height: screenHeight * 0.005,
                        //     fit: BoxFit.fill,
                        //   ),
                        // ),
                        // Image.asset(
                        //   'assets/images/arrow-right.png',
                        //   color: Colors.white,
                        //   width: screenWidth * 0.15,
                        //   height: screenHeight * 0.10,
                        // ),
                        Text(
                          "2",
                          style: TextStyle(
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.55,
              top: screenHeight * 0.88,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Multiplier_screen()),
                  );
                },
                child: Container(
                  width: screenWidth * 0.40,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.022,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Container(
                            //   decoration: const BoxDecoration(),
                            //   child: Image.asset(
                            //     'assets/images/Vector 191.png',
                            //     color: Colors.black,
                            //     width: screenWidth * 0.12,
                            //     height: screenHeight * 0.005,
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),

                            Text(
                              "    |",
                              style: TextStyle(
                                fontSize: screenHeight * 0.022,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "   2",
                              style: TextStyle(
                                fontSize: screenHeight * 0.025,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " Entry",
                              style: TextStyle(
                                fontSize: screenHeight * 0.025,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.004,
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenWidth * 0.03,
                              height: screenHeight * 0.004,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 81, 53, 1),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.012,
                            ),
                            Container(
                              width: screenWidth * 0.03,
                              height: screenHeight * 0.004,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 81, 53, 1),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.012,
                            ),
                            Container(
                              width: screenWidth * 0.03,
                              height: screenHeight * 0.004,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 81, 53, 1),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.012,
                            ),
                            Container(
                              width: screenWidth * 0.03,
                              height: screenHeight * 0.004,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 81, 53, 1),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.012,
                            ),
                            Container(
                              width: screenWidth * 0.03,
                              height: screenHeight * 0.004,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 81, 53, 1),
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ],
                        ),
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
  }
}
