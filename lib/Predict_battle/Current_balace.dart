import 'package:flutter/material.dart';

class Current_Balance extends StatefulWidget {
  const Current_Balance({super.key});

  @override
  State<Current_Balance> createState() => _Current_BalanceState();
}

class _Current_BalanceState extends State<Current_Balance> {
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
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(11),
                        topRight: Radius.circular(11))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Current balance Breakdown",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.025,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 4),
                      blurRadius: 7.5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: screenWidth * 0.85,
                            height: screenHeight * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/TBcurrency.png',
                                  width: 25,
                                  height: screenHeight * 0.05,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Text(
                                  "1,500",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.025,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Deposited/Winning(s)\nCoins",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.025,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Image.asset(
                                'assets/images/TBcurrency.png',
                                width: 15,
                                height: screenHeight * 0.05,
                              ),
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),
                              Text(
                                "-750",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.025,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "The Coins Will be deducted from\n your Deposied / Winnings",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.015,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                "-750",
                                style: TextStyle(
                                  color: const Color.fromRGBO(255, 81, 53, 1),
                                  fontSize: screenHeight * 0.025,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 06, right: 06),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Image.asset(
                                      'assets/images/Vector 150.png',
                                      color: Colors.grey,
                                      width: screenWidth * 0.12,
                                      height: screenHeight * 0.002,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(04, 0, 04, 0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Deposited/Winning(s)\nCoins",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/TBcurrency.png',
                                      width: 15,
                                      height: screenHeight * 0.05,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.02,
                                    ),
                                    Text(
                                      "-750",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "The Coins Will be deducted from\n your Deposied / Win",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenHeight * 0.015,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "-750",
                                      style: TextStyle(
                                        color: const Color.fromRGBO(
                                            255, 81, 53, 1),
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.92,
                            height: screenHeight * 0.04,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 210, 227, 224)
                                  .withOpacity(0.9),
                              borderRadius: BorderRadius.circular(09),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 211, 169, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Coins for thise battle is not deducted yet",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.015,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.04,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: screenWidth * 0.85,
                              height: screenHeight * 0.08,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Center(
                                child: Text(
                                  "Close",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.025,
                                    fontWeight: FontWeight.normal,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
