import 'package:carousel_slider/carousel_slider.dart';
import 'package:class_exercise/component/my_card.dart';
import 'package:flutter/material.dart';

class Presentation extends StatelessWidget {
  Presentation({super.key});

  final List<Widget> items = [
    const MyCard(
        nom: "MOMBO",
        prenom: "Eben",
        phone: "062646464",
        photo: "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg"
    ),
    const MyCard(
        nom: "PLAYBOI",
        prenom: "Carti",
        phone: "062646464",
        photo: "assets/images/playboi-carti-pfp-9.jpg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: items,
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        )
      ),
    );
  }
}
