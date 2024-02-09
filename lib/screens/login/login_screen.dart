import 'package:animations_flutter/screens/login/widgets/form_container.dart';
import 'package:animations_flutter/screens/login/widgets/sing_up_button.dart';
import 'package:animations_flutter/screens/login/widgets/stagger_animation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController? _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fundo1.jpg'), fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(
                        'images/icon2.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const FormContainer(),
                    const SingUpButton()
                  ],
                ),
                StaggerAnimation(controller: _animationController!)
              ],
            )
          ],
        ),
      ),
    );
  }
}
