import 'package:flutter/material.dart';

class Completed_tab extends StatelessWidget {
  const Completed_tab({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
      },
      child: Card(
        elevation: 4, // Adjust the shadow depth as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: Colors.grey[400]!), // Border color
        ),
        child: Container(
          width: screenWidth * 0.90,
          height: screenHeight * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromARGB(255, 251, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 18, top: 0),
                  child: Image.asset(
                    'assets/images/himaliyansage.png',
                    width: screenWidth * 0.12,
                    height: screenHeight * 0.10,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Flexible(
                      child: Text(
                        "Head to Head",
                        style: TextStyle(
                          fontSize: screenHeight * 0.02,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.015,
                    ),
                    Flexible(
                      child: Text(
                        "21 july 2023",
                        style: TextStyle(
                          fontSize: screenHeight * 0.017,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.017,
                    ),
                    Flexible(
                      child: Text(
                        "Click to view LeaderBoard",
                        style: TextStyle(
                          fontSize: screenHeight * 0.01,
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Container(
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color.fromARGB(255, 18, 134, 101),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: screenWidth * 0.35,
                          height: screenHeight * 0.03,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11),
                              topRight: Radius.circular(11),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(child: Container()),
                              Text(
                                "You Won",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.018),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Image.asset(
                              'assets/images/TBcurrency.png',
                              width: screenWidth * 0.05,
                              height: screenHeight * 0.05,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Flexible(
                            child: Text(
                              "200 Coins",
                              style: TextStyle(
                                  fontSize: screenHeight * 0.020,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child: Text(
                          "+ 25 xp",
                          style: TextStyle(
                              fontSize: screenHeight * 0.018,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
