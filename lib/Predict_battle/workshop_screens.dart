import 'package:flutter/material.dart';
import 'package:trade_battle_application/Completed_event_screen.dart';
import 'package:trade_battle_application/Live_event_screen.dart';
import 'package:trade_battle_application/Predict_battle/First_entry.dart';
import 'package:trade_battle_application/Predict_battle/Join_section.dart';
import 'package:trade_battle_application/Upcoming_event_Tab.dart';

class Workshop_MobileLayout extends StatefulWidget {
  const Workshop_MobileLayout({Key? key}) : super(key: key);

  @override
  State<Workshop_MobileLayout> createState() => _Workshop_MobileLayoutState();
}

class _Workshop_MobileLayoutState extends State<Workshop_MobileLayout> {
  int modeButtonIndex = 1;
  int? eventButtonIndex = 3;
  int? sectionButtonIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.33,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 201, 196, 196),
                          offset: Offset(0, 4),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: screenHeight * 0.08,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: TabBar(
                            tabs: const [
                              Tab(
                                text: "Solo",
                              ),
                              Tab(text: "Time"),
                              Tab(text: "League"),
                              Tab(text: "Predict"),
                            ],
                            labelColor: Colors.black,
                            indicator: DotTabIndicatior(
                                color: Colors.black, radius: 4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.26,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 81, 53),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(206, 117, 116, 116),
                          offset: Offset(0, 4),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.08,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Trade Battle",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.038,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: screenHeight * 0.034,
                                  width: screenWidth * 0.32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/TBcurrency.png',
                                        width: screenWidth * 0.05,
                                        height: 70,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, left: 5),
                                        child: Text(
                                          "45,000",
                                          style: TextStyle(
                                              fontFamily: "Nexa",
                                              color: Colors.white,
                                              fontSize: screenHeight * 0.023,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.046,
                        ),
                        Container(
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.07,
                          // Adjust the height as needed
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(
                                16), // Half of the height for circular shape
                            border: Border.all(color: Colors.white, width: 1.8),
                          ),
                          child: Row(
                            children: [
                              // Positioned(
                              //   top: screenHeight * 0.00,
                              //   left: screenWidth * 0.00,
                              SizedBox(
                                width: screenWidth * 0.40,
                                height: screenHeight * 0.07,
                                child: TextButton(
                                  onPressed: () {
                                    // Add your logic for 'My Battle' button
                                    setState(
                                      () {
                                        modeButtonIndex = 1;
                                      },
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: modeButtonIndex == 1
                                        ? Colors.white
                                        : null,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 4, right: 4),
                                        child: Image.asset(
                                          'assets/images/Icon_mybattle.png',
                                          color: modeButtonIndex == 1
                                              ? Colors.black
                                              : Colors.white,
                                          width: screenWidth * 0.05,
                                          height: screenHeight * 0.05,
                                        ),
                                      ),
                                      Text(
                                        'My Battles',
                                        style: TextStyle(
                                            fontSize: screenHeight * 0.017,
                                            fontFamily: "Nexa",
                                            fontWeight: FontWeight.w700,
                                            color: modeButtonIndex == 1
                                                ? Colors.black
                                                : Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // ),
                              // Replace 'whatEverIcon2' with your desired icon
                              // Positioned(
                              //   top: screenHeight * 0.00,
                              //   left: screenWidth * 0.45,
                              SizedBox(
                                width: screenWidth * 0.39,
                                height: screenHeight * 0.07,
                                child: TextButton(
                                  onPressed: () {
                                    // Add your logic for 'Join' button
                                    setState(
                                      () {
                                        modeButtonIndex = 2;
                                      },
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: modeButtonIndex == 2
                                        ? Colors.white
                                        : null,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 4, right: 4),
                                        child: Image.asset(
                                          'assets/images/Icon_join.png',
                                          color: modeButtonIndex == 1
                                              ? Colors.white
                                              : Colors.black,
                                          width: screenWidth * 0.05,
                                          height: screenHeight * 0.05,
                                        ),
                                      ),
                                      Text(
                                        'Join',
                                        style: TextStyle(
                                            fontSize: screenHeight * 0.017,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nexa",
                                            color: modeButtonIndex == 2
                                                ? Colors.black
                                                : Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Container(
                width: screenWidth * 0.90,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 227, 229),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.30,
                      height: screenHeight * 0.08,
                      child: TextButton(
                        onPressed: () {
                          eventButtonIndex = 3;
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              eventButtonIndex == 3 ? Colors.black : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            color: eventButtonIndex == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.30,
                      height: screenHeight * 0.07,
                      child: TextButton(
                        onPressed: () {
                          eventButtonIndex = 4;
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              eventButtonIndex == 4 ? Colors.black : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          "Live",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: "Nexa",
                            fontSize: 17,
                            color: eventButtonIndex == 4
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.30,
                      height: screenHeight * 0.07,
                      child: TextButton(
                        onPressed: () {
                          eventButtonIndex = 5;
                          setState(() {});
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              eventButtonIndex == 5 ? Colors.black : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: "Nexa",
                            fontSize: 17,
                            color: eventButtonIndex == 5
                                ? Colors.white
                                : Colors.black,
                          ),
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
                child: Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.35,
                      width: screenWidth * 0.90,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.03,
                            ),
                            Upcoming_event_Tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Upcoming_event_Tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Upcoming_event_Tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Upcoming_event_Tab(
                                screenWidth: screenWidth,
                                screenHeight: screenHeight),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.36,
                      child: Container(
                        width: screenWidth * 0.90,
                        height: screenHeight * 0.09,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 8, 8, 8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/Home.png', // Replace with the path t
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.70,
                                color: sectionButtonIndex == 6
                                    ? const Color.fromRGBO(0, 211, 169, 1)
                                    : Colors.white,
                              ),
                              onPressed: () {
                                sectionButtonIndex = 6;
                                setState(
                                    () {}); // Handle button press for the second button
                              },
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/Education.png',
                                color: sectionButtonIndex == 7
                                    ? const Color.fromRGBO(0, 211, 169, 1)
                                    : Colors.white, // Replace with the path
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.20,
                              ),
                              onPressed: () {
                                sectionButtonIndex = 7;
                                setState(
                                    () {}); // Handle button press for the second button // Handle button press for the
                              },
                            ),
                            SizedBox(
                              width: screenWidth * 0.30,
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/Leader Board.png',
                                color: sectionButtonIndex == 9
                                    ? const Color.fromRGBO(0, 211, 169, 1)
                                    : Colors.white, // Replace with the path
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.30,
                              ),
                              onPressed: () {
                                sectionButtonIndex = 9;
                                setState(
                                    () {}); // Handle button press for the third button // Handle button press for the thi
                              },
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            IconButton(
                              icon: Image.asset(
                                'assets/images/News.png', // Replace with the path
                                width: screenWidth * 0.20,
                                height: screenHeight * 0.20,
                                color: sectionButtonIndex == 10
                                    ? const Color.fromRGBO(0, 211, 169, 1)
                                    : Colors.white,
                              ),
                              onPressed: () {
                                sectionButtonIndex = 10;
                                setState(
                                    () {}); // Handle button press for the third button
                              },
                            ),
                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.34,
                      left: screenWidth * 0.30,
                      child: Container(
                        width: screenWidth * 0.30,
                        height: screenHeight * 0.12,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 232, 76, 24),
                            shape: BoxShape.circle),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/images/Vector.png',
                            color: sectionButtonIndex == 8
                                ? const Color.fromRGBO(0, 211, 169, 1)
                                : Colors
                                    .white, // Replace with the path, // Replace with the path
                            width: screenWidth * 0.40,
                            height: screenHeight * 0.70,
                          ),
                          onPressed: () {
                            sectionButtonIndex = 8;
                            setState(
                                () {}); // Handle button press for the third button // Handle button press for the thi
                          },
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

class DotTabIndicatior extends Decoration {
  final Color color;
  double radius;
  DotTabIndicatior({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _Dotpainter(color: color, radius: radius);
  }
}

class _Dotpainter extends BoxPainter {
  final Color color;
  double radius;
  _Dotpainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset dotOffset = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);

    canvas.drawCircle(offset + dotOffset, radius, _paint);
  }
}
