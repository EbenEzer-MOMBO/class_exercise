import 'package:class_exercise/component/my_card.dart';
import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyCard(
                nom: "MOMBO",
                prenom: "Eben",
                phone: "062646464",
                photo: "lib/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg")
          ],
        ),
      ),
    );
  }
}
