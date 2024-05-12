import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PredictBattleScreen extends StatefulWidget {
  const PredictBattleScreen({super.key});

  @override
  State<PredictBattleScreen> createState() => _PredictBattleScreenState();
}

class _PredictBattleScreenState extends State<PredictBattleScreen> {
  int modeButtonIndex = 1;
  int eventButtonIndex = 3;
  int? sectionBUttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 350,
            height: 730,
            color: Colors.white,
          ),
          Container(
            width: 350,
            height: 240,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0, 4),
                  blurRadius: 7.5,
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            height: 190,
            decoration: const BoxDecoration(
              color: Color(0xffb03825),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0, 4),
                  blurRadius: 7.5,
                ),
              ],
            ),
          ),
          const Positioned(
            left: 25,
            top: 50,
            child: Text(
              "Trade Battle",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            // rectangle289LtT (1374:15008)
            left: 200,
            top: 50,
            child: Align(
              child: SizedBox(
                width: 115,
                height: 27,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: const Color(0xffffffff))),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 250,
            top: 55,
            child: Text(
              "45,000",
              style: TextStyle(fontSize: 15, color: Color(0xffffffff)),
            ),
          ),
          Positioned(
            top: 54,
            left: 220,
            child: SizedBox(
              // group335huM (1374:15020)
              width: 20,
              height: 19,
              child: Image.asset('assets/images/TBcurrency.png',
                  width: 21, height: 18),
            ),
          ),
          Positioned(
            // rectangle83LQb (1374:15016)
            left: 20,
            top: 110,
            child: Align(
              child: SizedBox(
                width: 310,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color(0xffffffff)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            left: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 155,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      // Set the state to update the selected button index
                      setState(
                        () {
                          modeButtonIndex = 1;
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          modeButtonIndex == 1 ? Colors.white : null,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)),
                    ),
                    child: Text(
                      // mybattlesD71 (1374:15023)
                      'My Battles',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.2575,
                        color:
                            modeButtonIndex == 1 ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 128,
            left: 44,
            child: SizedBox(
              // group335huM (1374:15020)
              width: 20,
              height: 20,
              child: Image.asset('assets/images/TBmybattle.png',
                  color: modeButtonIndex == 1 ? Colors.black : Colors.white,
                  width: 21,
                  height: 18),
            ),
          ),
          Positioned(
            top: 110,
            left: 180,
            child: Row(
              children: [
                SizedBox(
                  // group3329cw (1374:15019)
                  width: 155,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      // Set the state to update the selected button index
                      setState(
                        () {
                          modeButtonIndex = 2;
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          modeButtonIndex == 2 ? Colors.white : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ), // Adjust the radius as needed
                    child: Text(
                      // mybattlesD71 (1374:15023)
                      'Join',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          height: 1.2575,
                          color: modeButtonIndex == 2
                              ? Colors.black
                              : Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 130,
            left: 220,
            child: SizedBox(
              // group335huM (1374:15020)
              width: 20,
              height: 20,
              child: Image.asset('assets/images/join.png',
                  width: 21,
                  height: 18,
                  color: modeButtonIndex == 2 ? Colors.black : Colors.white),
            ),
          ),
          Positioned(
            left: 20,
            top: 188,
            child: SizedBox(
              width: 60,
              height: 55,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Solo",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 95,
            top: 188,
            child: SizedBox(
              width: 60,
              height: 55,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Time",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 175,
            top: 189,
            child: SizedBox(
              width: 70,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "League",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 260,
            top: 189,
            child: SizedBox(
              width: 70,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Predict",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 24,
            child: Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 227, 229),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned(
            top: 260.10,
            left: 24,
            child: SizedBox(
              width: 100,
              height: 55,
              child: TextButton(
                onPressed: () {
                  eventButtonIndex = 3;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: eventButtonIndex == 3 ? Colors.black : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  "Upcoming",
                  style: TextStyle(
                    fontSize: 14,
                    color: eventButtonIndex == 3 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260.10,
            left: 123,
            child: SizedBox(
              width: 100,
              height: 55,
              child: TextButton(
                onPressed: () {
                  eventButtonIndex = 4;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: eventButtonIndex == 4 ? Colors.black : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  "Live",
                  style: TextStyle(
                    fontSize: 14,
                    color: eventButtonIndex == 4 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 260.10,
            left: 224,
            child: SizedBox(
              width: 100,
              height: 55,
              child: TextButton(
                onPressed: () {
                  eventButtonIndex = 5;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: eventButtonIndex == 5 ? Colors.black : null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  "Completed",
                  style: TextStyle(
                    fontSize: 14,
                    color: eventButtonIndex == 5 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 24,
            child: Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          Positioned(
            top: 641,
            left: 34,
            child: Container(
              width: 280,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffb03825),
              ),
            ),
          ),
          Positioned(
            top: 657,
            left: 40,
            child: IconButton(
              icon: Image.asset(
                'assets/images/Home.png', // Replace with the path t
                width: 24,
                height: 24,

                color: sectionBUttonIndex == 6
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
              ),
              onPressed: () {
                sectionBUttonIndex = 6;
                setState(() {}); // Handle button press for the second button
              },
            ),
          ),
          Positioned(
            top: 657,
            left: 88,
            child: IconButton(
              icon: Image.asset('assets/images/Education.png',
                  color: sectionBUttonIndex == 7
                      ? const Color.fromRGBO(0, 211, 169, 1)
                      : Colors.white, // Replace with the path
                  width: 80,
                  height: 24),
              onPressed: () {
                sectionBUttonIndex = 7;
                setState(
                    () {}); // Handle button press for the second button // Handle button press for the th
              },
            ),
          ),
          Positioned(
            top: 656,
            left: 153,
            child: IconButton(
              icon: Image.asset('assets/images/Vector.png',
                  color: sectionBUttonIndex == 8
                      ? const Color.fromRGBO(0, 211, 169, 1)
                      : Colors
                          .white, // Replace with the path, // Replace with the path
                  width: 80,
                  height: 24),
              onPressed: () {
                sectionBUttonIndex = 8;
                setState(
                    () {}); // Handle button press for the third button // Handle button press for the thi
              },
            ),
          ),
          Positioned(
            top: 657,
            left: 218,
            child: IconButton(
              icon: Image.asset('assets/images/Leader Board.png',
                  color: sectionBUttonIndex == 9
                      ? const Color.fromRGBO(0, 211, 169, 1)
                      : Colors.white, // Replace with the path
                  width: 80,
                  height: 24),
              onPressed: () {
                sectionBUttonIndex = 9;
                setState(
                    () {}); // Handle button press for the third button // Handle button press for the thi
              },
            ),
          ),
          Positioned(
            top: 659,
            left: 270,
            child: IconButton(
              icon: Image.asset(
                'assets/images/News.png', // Replace with the path
                width: 80,
                height: 24,
                color: sectionBUttonIndex == 10
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
              ),
              onPressed: () {
                sectionBUttonIndex = 10;
                setState(() {}); // Handle button press for the third button
              },
            ),
          ),
          Positioned(
            top: 315,
            left: 16,
            child: Container(
              width: 320,
              height: 325,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 300,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromARGB(255, 239, 237, 237),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(),
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  8,
                                  0,
                                  0,
                                  25,
                                ),
                                width: 58,
                                height: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                    'assets/images/himaliyansage.png',
                                    width: 21,
                                    height: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 85,
                                height: 55,
                                margin: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.fromLTRB(4, 16, 0, 0),
                                child: const Text(
                                  "Himalayan \nSage",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 115,
                                height: 75,
                                margin: const EdgeInsets.fromLTRB(
                                  12,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 18, 0, 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Image.asset(
                                          'assets/images/trophy_icon.png',
                                          width: 10,
                                          height: 10),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "5000",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                                    child: Text(
                                      "Starts | 10 Jul,9:45",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffb03825),
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 2, 0, 0),
                                        child: Text(
                                          "23:54",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    child: Text(
                                      "Ends | 10 Jul, 15:45",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 300,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromARGB(255, 239, 237, 237),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(),
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  8,
                                  0,
                                  0,
                                  25,
                                ),
                                width: 58,
                                height: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                    'assets/images/himaliyansage.png',
                                    width: 21,
                                    height: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 85,
                                height: 55,
                                margin: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.fromLTRB(4, 16, 0, 0),
                                child: const Text(
                                  "Himalayan \nSage",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 115,
                                height: 75,
                                margin: const EdgeInsets.fromLTRB(
                                  12,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 18, 0, 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Image.asset(
                                          'assets/images/trophy_icon.png',
                                          width: 10,
                                          height: 10),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "5000",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                                    child: Text(
                                      "Starts | 10 Jul,9:45",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffb03825),
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 2, 0, 0),
                                        child: Text(
                                          "23:54",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    child: Text(
                                      "Ends | 10 Jul, 15:45",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 300,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromARGB(255, 239, 237, 237),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(),
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  8,
                                  0,
                                  0,
                                  25,
                                ),
                                width: 58,
                                height: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                    'assets/images/himaliyansage.png',
                                    width: 21,
                                    height: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 85,
                                height: 55,
                                margin: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.fromLTRB(4, 16, 0, 0),
                                child: const Text(
                                  "Himalayan \nSage",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 115,
                                height: 75,
                                margin: const EdgeInsets.fromLTRB(
                                  12,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 18, 0, 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Image.asset(
                                          'assets/images/trophy_icon.png',
                                          width: 10,
                                          height: 10),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "5000",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                                    child: Text(
                                      "Starts | 10 Jul,9:45",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffb03825),
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 2, 0, 0),
                                        child: Text(
                                          "23:54",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    child: Text(
                                      "Ends | 10 Jul, 15:45",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 300,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromARGB(255, 239, 237, 237),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(),
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  8,
                                  0,
                                  0,
                                  25,
                                ),
                                width: 58,
                                height: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                    'assets/images/himaliyansage.png',
                                    width: 21,
                                    height: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 85,
                                height: 55,
                                margin: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: const EdgeInsets.fromLTRB(4, 16, 0, 0),
                                child: const Text(
                                  "Himalayan \nSage",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 115,
                                height: 75,
                                margin: const EdgeInsets.fromLTRB(
                                  12,
                                  0,
                                  0,
                                  35,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.transparent,
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(19, 18, 0, 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Image.asset(
                                          'assets/images/trophy_icon.png',
                                          width: 10,
                                          height: 10),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "5000",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                                    child: Text(
                                      "Starts | 10 Jul,9:45",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffb03825),
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 2, 0, 0),
                                        child: Text(
                                          "23:54",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    child: Text(
                                      "Ends | 10 Jul, 15:45",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 145, 143, 143),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 145, 143, 143),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 145, 143, 143),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
