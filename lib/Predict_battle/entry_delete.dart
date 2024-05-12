import 'package:flutter/material.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab.dart';
import 'package:trade_battle_application/Predict_battle/Question_tab2.dart';

class Entry_delete extends StatefulWidget {
  const Entry_delete({super.key});

  @override
  State<Entry_delete> createState() => _Entry_deleteState();
}

class _Entry_deleteState extends State<Entry_delete> {
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
                      "Entry 1",
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
                      height: screenHeight * 0.01,
                    ),
                    Container(
                      width: double.infinity,
                      height: screenHeight * 0.53,
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Text(
                            "            Are You Sure?\n you want to delete this Entry.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          Text(
                            "Note",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.03,
                          ),
                          Text(
                            "Your winning probability be lower \nif you Proceed to delete this Entry",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.025,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: screenHeight * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: screenWidth * 0.35,
                                      height: screenHeight * 0.08,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: screenWidth * 0.03,
                                          ),
                                          Center(
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenHeight * 0.025,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: screenWidth * 0.35,
                                      height: screenHeight * 0.08,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: screenWidth * 0.03,
                                          ),
                                          Center(
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: screenHeight * 0.025,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
