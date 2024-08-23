import 'package:flutter/material.dart';

class Entry_summary extends StatefulWidget {
  const Entry_summary({super.key});

  @override
  State<Entry_summary> createState() => _Entry_summaryState();
}

class _Entry_summaryState extends State<Entry_summary> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.10,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 77, 124, 254),
                        Color.fromARGB(255, 151, 71, 255),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hurray!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.022,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 4),
                      blurRadius: 7.5,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.53,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "You  have  joined  the  Battle",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Himalyan Sage",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 0, 211, 169),
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.03,
                                ),
                                Image.asset(
                                  'assets/images/Vector 150.png',
                                  color: Colors.grey,
                                  width: screenWidth * 0.80,
                                  height: screenHeight * 0.002,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Center(
                                  child: Text(
                                    "Please navigate to My Battle > Upcoming to view the",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "status of this battle ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Color.fromARGB(255, 24, 20, 20),
                                  width: double.infinity,
                                  height: screenHeight * 0.50,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: screenWidth * 0.03,
                      top: screenHeight * 0.46,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: screenWidth * 0.84,
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Text(
                                "close",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.025,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                            ],
                          ),
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
