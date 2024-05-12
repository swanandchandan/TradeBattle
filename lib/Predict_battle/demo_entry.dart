import 'package:flutter/material.dart';

class FirstEntry extends StatefulWidget {
  const FirstEntry({Key? key}) : super(key: key);

  @override
  State<FirstEntry> createState() => _FirstEntryState();
}

class _FirstEntryState extends State<FirstEntry> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.02, screenHeight * 0.02, screenWidth * 0.02, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            fit: BoxFit.contain,
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
            Container(
              height: screenHeight * 0.28,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(74, 74, 74, 1),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/himaliyansage.png',
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.15,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.027,
                          ),
                          Text(
                            "Himalayan Sage",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenHeight * 0.019,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assets/images/Vector 150.png',
                            color: Colors.white,
                            width: screenWidth * 0.25,
                            height: screenHeight * 0.02,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Spots.png',
                                color: Colors.white,
                                width: screenWidth * 0.03,
                                height: screenHeight * 0.02,
                              ),
                              Text(
                                "120",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.013,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "/200 spots",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.013,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: screenHeight * 0.025,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 211, 169, 1),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                Image.asset(
                                  'assets/images/TBcurrency.png',
                                  width: screenWidth * 0.03,
                                  height: screenHeight * 0.02,
                                  fit: BoxFit.contain,
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
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
