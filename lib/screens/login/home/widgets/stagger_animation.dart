import 'package:animations_flutter/screens/login/home/widgets/animated_list_view.dart';
import 'package:animations_flutter/screens/login/home/widgets/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({super.key, required this.controller})
      : containerRow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSliderPosition = EdgeInsetsTween(
                begin: const EdgeInsets.only(bottom: 0),
                end: const EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.325, 0.8, curve: Curves.ease)));

  final Animation<double> containerRow;
  final Animation<EdgeInsets> listSliderPosition;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerRow: containerRow,
        ),
        AnimationListView(
          listSlidePosition: listSliderPosition,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
