import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Futevôlei'];

  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          disabledColor: Colors.grey,
          onPressed: () {
            _category > 0 ? selectBackward() : null;
          },
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w300,
              color: Colors.black),
        ),
        IconButton(
          onPressed: () {
            _category < categories.length - 1 ? selectForward() : null;
          },
          disabledColor: Colors.grey,
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.black,
        )
      ],
    );
  }
}
