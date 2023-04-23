import 'dart:math';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget{
  final String nom;
  final String prenom;
  final String phone;
  final String photo;
  const MyCard({
    required this.nom,
    required this.prenom,
    required this.phone,
    required this.photo,
    Key? key
  }) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  Color _buttonColor = Colors.blue;

  //changer couleur du bouton
  void _changeButtonColor() {
    final random = Random();
    final color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    setState(() {
      _buttonColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            //photo
            CircleAvatar(
              radius: 50.0,
              backgroundImage: Image.asset(widget.photo).image,
            ),

            const SizedBox(height: 25,),

            //nom
            Text(
              "Nom: ${widget.nom} ",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            //prenom
            Text(
              "Prénom: ${widget.prenom}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25,),

            //contact
            Text(
              "Contact: ${widget.phone}",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),

            //bouton
            ElevatedButton(
              onPressed: _changeButtonColor,
              style: ElevatedButton.styleFrom(
                backgroundColor: _buttonColor,
              ),
              child: const Text(
                'Me contacter',
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
