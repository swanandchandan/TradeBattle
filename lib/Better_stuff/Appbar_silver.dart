import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:trade_battle_application/Better_stuff/Course_Screen.dart';
import 'package:trade_battle_application/Better_stuff/Join_content.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    controller = ScrollController();
    animation = ColorTween(
      begin: const Color.fromRGBO(243, 103, 47, 1),
      end: null,
    ).animate(
      CurvedAnimation(
        parent: _tabController.animation!,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: animation.value,
      backgroundColor: Colors.white,
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                expandedHeight: 200,
                backgroundColor:
                    innerBoxIsScrolled ? Colors.transparent : Colors.white,
                shadowColor: Colors.transparent,
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                forceElevated: innerBoxIsScrolled,
                clipBehavior: Clip.antiAlias,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                    child: ColoredBox(
                      color: const Color.fromRGBO(255, 81, 53, 1),
                      // innerBoxIsScrolled
                      //     ? Colors.transparent
                      //     : const Color.fromRGBO(255, 81, 53, 1),
                      child: Transform.translate(
                        offset: const Offset(0, kToolbarHeight * 6),
                        child: Transform.scale(
                          scale: 5,
                          child: ColorFiltered(
                            colorFilter: const ColorFilter.matrix(<double>[
                              -1.0, 0.0, 0.0, 0.0, 255.0, //
                              0.0, -1.0, 0.0, 0.0, 255.0, //
                              0.0, 0.0, -1.0, 0.0, 255.0, //
                              0.0, 0.0, 0.0, 1.0, 0.0, //
                            ]),
                            child: Opacity(
                              opacity: 0.35,
                              child: SvgPicture.asset(
                                  "assets/svg/app_svg/Layered_shapd.svg"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                pinned: true,
                floating: true,
                snap: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(80),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: kToolbarHeight / 4,
                      left: kToolbarHeight / 2,
                      right: kToolbarHeight / 2,
                      bottom: kToolbarHeight / 4,
                    ),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 81, 53, 1),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: const Color.fromRGBO(183, 175, 175, 1),
                        width: 2,
                      ),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(
                        fontFamily: "Nexa",
                      ),
                      dividerColor: Colors.transparent,
                      controller: _tabController,
                      indicator: BoxDecoration(
                        border: const Border(
                          bottom: BorderSide(color: Colors.transparent),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: const [
                        Tab(text: "Courses"),
                        Tab(text: "Market"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            CourseScreen(),
            JoinContent(),
          ],
        ),
      ),
    );
  }
}
