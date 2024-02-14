import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerRow;

  const HomeTop({Key? key, required this.containerRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.4,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/fundo1.jpg'),
          fit: BoxFit.cover,
        ),
      ),

      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Bem-vindo, João!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerRow.value * 120,
              height: containerRow.value * 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/perfil.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                width: containerRow.value * 35,
                height: containerRow.value * 35,
                margin: const EdgeInsets.only(left: 80),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(80, 210, 184, 1.0)),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: containerRow.value * 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // Example of using the containerRow animation
    );
  }
}
