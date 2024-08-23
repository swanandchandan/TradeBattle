import 'package:flutter/material.dart';
import 'package:trade_battle_application/App_ELEments/Join_card.dart';
import 'package:trade_battle_application/Better_stuff/Appbar_silver.dart';
// import 'package:trade_battle_application/Completed_event_screen.dart';
// import 'package:trade_battle_application/Live_event_screen.dart';
// import 'package:trade_battle_application/Predict_battle/Current_balace.dart';
// import 'package:trade_battle_application/Predict_battle/Entry1_summary.dart';
// import 'package:trade_battle_application/Predict_battle/Entry_fee_screen.dart';
// import 'package:trade_battle_application/Predict_battle/Fee_breakdown.dart';
// import 'package:trade_battle_application/Predict_battle/First_entry.dart';
// import 'package:trade_battle_application/Predict_battle/Join_section.dart';
// import 'package:trade_battle_application/Predict_battle/Multiplier_screen.dart';
// import 'package:trade_battle_application/Predict_battle/demo_entry.dart';
// import 'package:trade_battle_application/Predict_battle/entry_delete.dart';
// import 'package:trade_battle_application/Responsive/Homepage.dart';
// import 'package:trade_battle_application/Responsive/tabletLayout.dart';
// import 'package:trade_battle_application/Upcoming_event_Tab.dart';
// import 'package:trade_battle_application/indicator_animation.dart/event_indicator.dart';
// import 'package:trade_battle_application/m.dart';
// import 'package:trade_battle_application/new%20responsive.dart';
// import 'package:trade_battle_application/new.dart';
// import 'package:trade_battle_application/predict_battle_screen.dart';
// import 'package:trade_battle_application/Responsive/responsive_design_setup.dart';
// import 'package:trade_battle_application/responsive_screen.dart';
// import 'package:trade_battle_application/upcoming_event_screen.dart';

void main() {
  runApp(const TradeBattleScreen());
}

class TradeBattleScreen extends StatelessWidget {
  const TradeBattleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => const MobileLayout(),
      //   "/live": (context) => const Live_event(),
      //   "/completed": (context) => const Completed_event(),
      //   "/first_entry": (context) => const First_entry(),
      //   "/Multiplier_Screen": (context) => const Multiplier_screen(),
      //   "/Fee_breakdown": (context) => const Multiplier_screen(),
      //   "/current_balance": (context) => const Multiplier_screen(),
      //   "/Entry1_postview": (context) => const Multiplier_screen(),
      // },
      home: EducationScreen(),
    );
  }
}
