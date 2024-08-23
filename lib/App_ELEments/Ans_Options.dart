import 'package:flutter/material.dart';

class Option2 extends StatelessWidget {
  const Option2({
    super.key,
    required this.screenHeight,
    required this.lable,
  });

  final double screenHeight;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: screenHeight * 0.06,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 19, 18, 18).withOpacity(0.10),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Center(
              child: Text(
                lable,
                style: TextStyle(
                  fontSize: screenHeight * 0.023,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromRGBO(41, 41, 41, 1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
      ],
    );
  }
}
