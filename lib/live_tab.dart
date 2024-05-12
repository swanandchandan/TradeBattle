import 'package:flutter/material.dart';

class Live_event_tab extends StatelessWidget {
  const Live_event_tab({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adjust the shadow depth as needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: Colors.grey[400]!), // Border color
      ),
      child: Container(
        width: screenWidth * 0.90,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color.fromARGB(255, 251, 249, 249),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 18, top: 0),
                child: Image.asset(
                  'assets/images/himaliyansage.png',
                  width: screenWidth * 0.12,
                  height: screenHeight * 0.15,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.02,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Head to Head",
                      style: TextStyle(
                        fontSize: screenHeight * 0.02,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: screenHeight * 0.02,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: screenWidth * 0.20,
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 1.5),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Image.asset('assets/images/trophy_icon.png',
                              width: screenWidth * 0.07,
                              height: screenHeight * 0.025),
                          Text(
                            "5,000",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.025,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  width: screenWidth * 0.30,
                  height: screenHeight * 0.20,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 211, 211),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Stack(
                    children: [
                      //  SizedBox(
                      //   height: screenHeight * 0.015,
                      // ),
                      Positioned(
                        child: Text(
                          "Live",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight * 0.022,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "Ends In",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight * 0.010,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          "00:25",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 18, 134, 101),
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight * 0.030,
                          ),
                        ),
                      ),
                      //    Expanded(
                      //      child: SizedBox(
                      //          height: screenHeight * 0.015,
                      //      ),
                      //    ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
