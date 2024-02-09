import 'package:flutter/material.dart';

class SingUpButton extends StatelessWidget {
  const SingUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 100),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Não possui uma conta? Cadastre-se',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 12,
                letterSpacing: 0.5),
          ),
        ));
  }
}
