import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  String cardName;
  String cardDesc;
  String image;

  DetailsCard(
      {required this.cardName, required this.cardDesc, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$cardName'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(cardDesc),
            GestureDetector(
              child: Image.asset('assets/images/$image'),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
