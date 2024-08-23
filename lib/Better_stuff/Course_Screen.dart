import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Color> _indicatorColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  final List<Color> _textColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
  ];

  final List<String> _tabTitles = [
    'Solo',
    'Time',
    'League',
    "Predict",
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _indicatorColors.length, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 2,
                    left: 20,
                    right: 20,
                    bottom: 2,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        offset: const Offset(0, 3),
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    indicator: DotTabIndicatior(
                      color: _indicatorColors[
                          _tabController.index % _indicatorColors.length],
                      radius: 4,
                    ),
                    labelStyle: const TextStyle(
                      fontFamily: "Nexa",
                    ),
                    tabs: List.generate(
                      _tabTitles.length,
                      (index) => Tab(
                        child: Text(
                          _tabTitles[index],
                          style: TextStyle(
                            color: _tabController.index == index
                                ? _indicatorColors[index]
                                : Colors
                                    .black, // Default color when not selected
                            fontWeight: _tabController.index == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.3, // Adjust the height as needed
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Center(
                        child: Text("Solo"),
                      ),
                      Center(
                        child: Text("Time"),
                      ),
                      Center(
                        child: Text("League"),
                      ),
                      Center(
                        child: Text("Predict"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DotTabIndicatior extends Decoration {
  final Color color;
  double radius;
  DotTabIndicatior({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(color: color, radius: radius);
  }
}

class _DotPainter extends BoxPainter {
  final Color color;
  double radius;
  _DotPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint _paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    final Offset dotOffset = Offset(
      configuration.size!.width / 2,
      configuration.size!.height / 2 + (radius * 4.5),
    );

    canvas.drawCircle(offset + dotOffset, radius, _paint);
  }
}








// import 'package:flutter/material.dart';

// class CourseScreen extends StatefulWidget {
//   const CourseScreen({super.key});

//   @override
//   State<CourseScreen> createState() => _CourseScreenState();
// }

// class _CourseScreenState extends State<CourseScreen>
//     with TickerProviderStateMixin {
//   // final ScrollController _scrollController = ScrollController();
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController =
//         TabController(length: 4,vsync: this); // Updated length to 4
//   }

//   @override
//   void dispose() {
//     // _scrollController.dispose();
//     _tabController.dispose(); // Dispose the TabController
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       // physics:NeverScrollableScrollPhysics(),
//       slivers: [
//         SliverOverlapInjector(
//           handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//         ),
//         SliverToBoxAdapter(
//           child: Container(
//             color: Colors.white,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.only(
//                     top: 2,
//                     left: 20,
//                     right: 20,
//                     bottom: 2,
//                   ),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 1,
//                         offset: const Offset(0, 3),
//                         blurRadius: 5,
//                       ),
//                     ],
//                     borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(15),
//                       bottomRight: Radius.circular(15),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       TabBar(
//                         labelStyle: const TextStyle(
//                           fontFamily: "Nexa",
//                         ),
//                         controller: _tabController,
//                         dividerColor: Colors.transparent,
//                         indicator: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(color: Colors.transparent),
//                           ),
//                         ),
//                         tabs: const [
//                           Tab(text: 'Tab 1'),
//                           Tab(text: 'Tab 2'),
//                           Tab(text: 'Tab 3'),
//                           Tab(text: 'Tab 4'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SliverList.builder(
//           itemCount: 20, // Add more items to ensure scrolling
//           itemBuilder: (context, index) {
//             return Container(
//               color: Colors.white,
//               child: ListTile(
//                 title: Text('Item $index'),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
