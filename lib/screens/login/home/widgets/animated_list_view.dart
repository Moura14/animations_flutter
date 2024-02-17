import 'package:animations_flutter/screens/login/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimationListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimationListView({super.key, required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar',
          subtitle: 'Na Udemy',
          image: const AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Jogar Futevôlei',
          subtitle: 'Em Copacabana',
          image: const AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Jogar Futevôlei',
          subtitle: 'Em Copacabana',
          image: const AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Jogar Futevôlei',
          subtitle: 'Em Copacabana',
          image: const AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
