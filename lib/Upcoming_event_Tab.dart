import 'package:flutter/material.dart';

class Upcoming_event_Tab extends StatelessWidget {
  Upcoming_event_Tab({
    super.key,
     required this.screenHeight,
    required this.screenWidth,
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
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color.fromARGB(255, 251, 249, 249),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Image.asset(
                      'assets/images/himaliyansage.png',
                      width: screenWidth * 0.12,
                      height: screenHeight * 0.10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.01),
                    child: Text(
                      "Himalayan \nSage",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenHeight * 0.022,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.01, right: screenWidth * 0.02),
                    child: Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 1.5),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: screenWidth * 0.04,
                            ),
                          ),
                          Image.asset('assets/images/trophy_icon.png',
                              width: screenWidth * 0.07,
                              height: screenHeight * 0.03),
                          Text(
                            "5,000",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.025,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: screenWidth * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.02,
                  right: screenWidth * 0.04,
                ),
                child: Image.asset(
                  'assets/images/Vector 150.png',
                  color: Colors.grey,
                  width: screenWidth * 0.90,
                  height: screenHeight * 0.02,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.03,
                ),
                child: Row(
                  children: [
                    Text(
                      "Starts |",
                      style: TextStyle(
                        fontSize: screenHeight * 0.020,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " 10 Jul, 09:45",
                      style: TextStyle(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.032,
                      decoration: BoxDecoration(
                        color: const Color(0xffb03825),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          const Text(
                            "23:54",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          Expanded(child: Container()),
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
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " 10 Jul, 15:45",
                      style: TextStyle(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
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
