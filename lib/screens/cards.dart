import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:kwiku/component/repositories/card.data.dart';
import 'package:kwiku/screens/details.card.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    CardService cardService = CardService();
    final cards = cardService.allCards();
    ContainerTransitionType _transition = ContainerTransitionType.fadeThrough;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 4 / 2,
            ),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return OpenContainer(
                  transitionType: _transition,
                  transitionDuration: Duration(milliseconds: 600),
                  closedBuilder: (context, action) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/${cards[index].image}'),
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                  openBuilder: (context, action) {
                    return DetailsCard(
                        cardName: cards[index].cardName,
                        cardDesc: cards[index].cardDesc,
                        image: cards[index].image);
                  });
            }),
      ),
    );
  }
}
