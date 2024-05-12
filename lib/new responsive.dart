import 'package:flutter/material.dart';

class PredictBattleScreen3 extends StatefulWidget {
  const PredictBattleScreen3({super.key});

  @override
  State<PredictBattleScreen3> createState() => _PredictBattleScreen3State();
}

class _PredictBattleScreen3State extends State<PredictBattleScreen3> {
  int modeButtonIndex = 1;
  int eventButtonIndex = 3;
  int? sectionButtonIndex = 6;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: screenWidth,
              height: 240,
              color: Colors.white,
            ),
            Container(
              width: screenWidth,
              height: 190,
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Trade Battle",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 27,
              width: 115,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color(0xffffffff)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "45,000",
                style: TextStyle(fontSize: 15, color: Color(0xffffffff)),
              ),
            ),
            SizedBox(
              width: 21,
              height: 18,
              child: Image.asset('assets/images/TBcurrency.png'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildModeButton("My Battles", 1),
                buildModeButton("Join", 2),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCategoryButton("Solo"),
                buildCategoryButton("Time"),
                buildCategoryButton("League"),
                buildCategoryButton("Predict"),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 55,
              color: const Color.fromARGB(255, 229, 227, 229),
            ),
            buildEventFilterButtons(),
            Container(
              height: 55,
              color: Colors.black,
            ),
            Container(
              width: 280,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffb03825),
              ),
              child: IconButton(
                icon: Image.asset(
                  'assets/images/Home.png',
                  width: 24,
                  height: 24,
                  color: sectionButtonIndex == 6
                      ? const Color.fromRGBO(0, 211, 169, 1)
                      : Colors.white,
                ),
                onPressed: () {
                  sectionButtonIndex = 6;
                  setState(() {});
                },
              ),
            ),
            // Add similar sections for other buttons
            const SizedBox(height: 20),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 145, 143, 143),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildModeButton(String label, int index) {
    return SizedBox(
      width: 155,
      height: 60,
      child: TextButton(
        onPressed: () {
          setState(() {
            modeButtonIndex = index;
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: modeButtonIndex == index ? Colors.white : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            height: 1.2575,
            color: modeButtonIndex == index ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildCategoryButton(String label) {
    return SizedBox(
      width: 60,
      height: 55,
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }

  Widget buildEventFilterButtons() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildEventFilterButton("Upcoming", 3),
          buildEventFilterButton("Live", 4),
          buildEventFilterButton("Completed", 5),
        ],
      ),
    );
  }

  Widget buildEventFilterButton(String label, int index) {
    return SizedBox(
      width: 100,
      height: 55,
      child: TextButton(
        onPressed: () {
          setState(() {
            eventButtonIndex = index;
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: eventButtonIndex == index ? Colors.black : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: eventButtonIndex == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
