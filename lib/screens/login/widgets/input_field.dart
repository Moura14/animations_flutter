import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? hint;
  final bool obscure;
  final IconData? icon;

  const InputField({super.key, this.hint, this.obscure = false, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 0.5))),
      child: TextFormField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
            contentPadding:
                const EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5)),
      ),
    );
  }
}
