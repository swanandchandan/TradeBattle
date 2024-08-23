import 'package:flutter/material.dart';
import 'package:trade_battle_application/Responsive/Homepage.dart';

class Quiz_template extends StatefulWidget {
  const Quiz_template({super.key});

  @override
  State<Quiz_template> createState() => _Quiz_templateState();
}

class _Quiz_templateState extends State<Quiz_template> {
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
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03,
                        screenHeight * 0.01, screenWidth * 0.03, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MobileLayout()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.006),
                            child: const Icon(Icons.arrow_back_ios, size: 20),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.010),
                          child: Text(
                            "Predict Battle",
                            style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 41, 41, 41),
                                fontSize: screenHeight * 0.020),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          height: screenHeight * 0.038,
                          width: screenWidth * 0.31,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                            borderRadius: BorderRadius.circular(05),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/TBcurrency.png',
                                width: screenWidth * 0.08,
                                height: 30,
                              ),
                              Text(
                                "45,000",
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.023,
                                    fontWeight: FontWeight.w700),
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
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Questions",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.015,
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
                                      color:
                                          const Color.fromARGB(255, 41, 41, 41),
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.004,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.032,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Multipler",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.015,
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
                                      color:
                                          const Color.fromARGB(255, 41, 41, 41),
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.004,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.20,
                                  height: screenHeight * 0.032,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "join",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.015,
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
                        color: const Color.fromARGB(255, 74, 74, 74),
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
                                Image.asset(
                                  'assets/images/himaliyansage2.png',
                                  width: 65,
                                  height: screenHeight * 0.10,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Himalayan Sage",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: screenHeight * 0.018,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 4),
                                        child: Container(
                                          child: Image.asset(
                                            'assets/images/Vector 150.png',
                                            fit: BoxFit.fill,
                                            color: const Color.fromARGB(
                                                255, 217, 217, 217),
                                            width: 145,
                                            height: 2,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/Spots.png',
                                            fit: BoxFit.fill,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            width: 15,
                                            height: 12,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3, top: 2),
                                            child: Text(
                                              "120",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.013,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3, top: 2),
                                            child: Text(
                                              "/200 spots",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.013,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: Container(
                                          width: 150,
                                          height: screenHeight * 0.025,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            color: const Color.fromRGBO(
                                              1,
                                              211,
                                              169,
                                              1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Text(
                                                  "Entry |",
                                                  style: TextStyle(
                                                    fontFamily: "Nexa",
                                                    color: Colors.white,
                                                    fontSize:
                                                        screenHeight * 0.014,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Image.asset(
                                                'assets/images/TBcurrency.png',
                                                width: 15,
                                                height: 15,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Text(
                                                  "1,500",
                                                  style: TextStyle(
                                                    fontFamily: "Nexa",
                                                    color: Colors.white,
                                                    fontSize:
                                                        screenHeight * 0.014,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
                                            fontFamily: "Nexa",
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
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 09:45",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.015,
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
                                      color: const Color.fromARGB(
                                          255, 255, 80, 53),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2),
                                          child: Text(
                                            "23:54",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              fontSize: screenHeight * 0.015,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
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
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 15:45",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.w700,
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
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: Image.asset(
                                        'assets/images/Single_entry.png',
                                        fit: BoxFit.fill,
                                        width: 15,
                                        height: screenHeight * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Single Entry",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: Image.asset(
                                        'assets/images/group.png',
                                        fit: BoxFit.fill,
                                        width: 13,
                                        height: screenHeight * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Flexible",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: Image.asset(
                                        'assets/images/cup.png',
                                        fit: BoxFit.fill,
                                        width: 13,
                                        height: screenHeight * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "45%",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Winners",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: screenWidth * 0.04,
              top: screenHeight * 0.88,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenWidth * 0.92,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 211, 169, 1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Join",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.arrow_right_alt),
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
