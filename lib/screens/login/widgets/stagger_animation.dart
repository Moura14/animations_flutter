import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  final Animation<double> buttonSqueze;

  StaggerAnimation({super.key, required this.controller})
      : buttonSqueze = Tween(begin: 320.0, end: 60.5).animate(CurvedAnimation(
            parent: controller, curve: const Interval(0.0, 0.150)));

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: InkWell(
        onTap: () {
          controller.forward();
        },
        child: Container(
            width: buttonSqueze.value,
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: _buildInside(context)),
      ),
    );
  }

  Widget _buildInside(BuildContext context) {
    if (buttonSqueze.value > 75) {
      return const Text(
        'Sign in',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      );
    } else {
      return const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
