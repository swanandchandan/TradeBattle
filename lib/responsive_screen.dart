import 'package:flutter/material.dart';

class PredictBattleScreen2 extends StatefulWidget {
  const PredictBattleScreen2({Key? key}) : super(key: key);

  @override
  State<PredictBattleScreen2> createState() => _PredictBattleScreen2State();
}

class _PredictBattleScreen2State extends State<PredictBattleScreen2> {
  int modeButtonIndex = 1;
  int eventButtonIndex = 3;
  int? sectionBUttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Constants for proportions
    final double containerWidth = screenWidth * 5;
    final double containerHeight = screenHeight * 10;
    final double circleButtonSize = screenWidth * 0.04;
    final double textButtonHeight = screenHeight * 0.09;
    final double textButtonFontSize = screenWidth * 0.015;
    final double iconButtonSize = screenWidth * 0.07;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.9,
              color: Colors.white,
            ),
          ),
          Positioned(
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.3,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 7.5,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.23,
              decoration: const BoxDecoration(
                color: Color(0xffb03825),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 7.5,
                  ),
                ],
              ),
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
            left: screenWidth * 0.57,
            top: 50,
            child: Align(
              child: SizedBox(
                width: screenWidth * 0.33,
                height: screenHeight * 0.04,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: const Color(0xffffffff)),
                  ),
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
            left: screenWidth * 0.63,
            child: SizedBox(
              width: screenWidth * 0.04,
              height: screenHeight * 0.025,
              child: Image.asset(
                'assets/images/TBcurrency.png',
                width: screenWidth * 0.04,
                height: screenHeight * 0.025,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.15,
            child: Align(
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.09,
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
            top: screenHeight * 0.15,
            left: screenWidth * 0.03,
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.09,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        modeButtonIndex = 1;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          modeButtonIndex == 1 ? Colors.white : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'My Battles',
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
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
            top: screenHeight * 0.17,
            left: screenWidth * 0.07,
            child: SizedBox(
              width: screenWidth * 0.04,
              height: screenHeight * 0.025,
              child: Image.asset(
                'assets/images/TBmybattle.png',
                color: modeButtonIndex == 1 ? Colors.black : Colors.white,
                width: screenWidth * 0.04,
                height: screenHeight * 0.025,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.15,
            left: screenWidth * 0.47,
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.09,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        modeButtonIndex = 2;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          modeButtonIndex == 2 ? Colors.white : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ),
                    child: Text(
                      'Join',
                      style: TextStyle(
                        fontSize: screenWidth * 0.015,
                        fontWeight: FontWeight.w700,
                        height: 1.2575,
                        color:
                            modeButtonIndex == 2 ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.17,
            left: screenWidth * 0.63,
            child: SizedBox(
              width: screenWidth * 0.04,
              height: screenHeight * 0.025,
              child: Image.asset(
                'assets/images/join.png',
                width: screenWidth * 0.04,
                height: screenHeight * 0.025,
                color: modeButtonIndex == 2 ? Colors.black : Colors.white,
              ),
            ),
          ),
          // ... Repeat the pattern for other Positioned widgets ...

          Positioned(
            top: screenHeight * 0.78,
            left: screenWidth * 0.08,
            child: Container(
              width: screenWidth * 0.83,
              height: screenHeight * 0.1,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.77,
            left: screenWidth * 0.09,
            child: Container(
              width: screenWidth * 0.81,
              height: screenHeight * 0.125,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffb03825),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.79,
            left: screenWidth * 0.1,
            child: IconButton(
              icon: Image.asset(
                'assets/images/Home.png',
                width: screenWidth * 0.07,
                height: screenHeight * 0.03,
                color: sectionBUttonIndex == 6
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
              ),
              onPressed: () {
                sectionBUttonIndex = 6;
                setState(() {});
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.79,
            left: screenWidth * 0.18,
            child: IconButton(
              icon: Image.asset(
                'assets/images/Education.png',
                color: sectionBUttonIndex == 7
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
                width: screenWidth * 0.2,
                height: screenHeight * 0.06,
              ),
              onPressed: () {
                sectionBUttonIndex = 7;
                setState(() {});
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.79,
            left: screenWidth * 0.33,
            child: IconButton(
              icon: Image.asset(
                'assets/images/Vector.png',
                color: sectionBUttonIndex == 8
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
                width: screenWidth * 0.2,
                height: screenHeight * 0.06,
              ),
              onPressed: () {
                sectionBUttonIndex = 8;
                setState(() {});
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.79,
            left: screenWidth * 0.47,
            child: IconButton(
              icon: Image.asset(
                'assets/images/Leader Board.png',
                color: sectionBUttonIndex == 9
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
                width: screenWidth * 0.2,
                height: screenHeight * 0.06,
              ),
              onPressed: () {
                sectionBUttonIndex = 9;
                setState(() {});
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.79,
            left: screenWidth * 0.62,
            child: IconButton(
              icon: Image.asset(
                'assets/images/News.png',
                width: screenWidth * 0.2,
                height: screenHeight * 0.06,
                color: sectionBUttonIndex == 10
                    ? const Color.fromRGBO(0, 211, 169, 1)
                    : Colors.white,
              ),
              onPressed: () {
                sectionBUttonIndex = 10;
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
