import 'package:kwiku/component/models/card.model.dart';

class CardService {
  List<Map<String, dynamic>> data = [
    {
      "cardName": "Orange Money",
      "cardDesc": "Envoyer argent par Orange Money",
      "image": "orange.png"
    },
    {
      "cardName": "Free Money",
      "cardDesc": "Envoyer argent par Free Money",
      "image": "free.png"
    },
    {
      "cardName": "Kpay Money",
      "cardDesc": "Envoyer argent par Kpay Money",
      "image": "kpay.png"
    },
    {
      "cardName": "Wave Money",
      "cardDesc": "Envoyer argent par Wave Money",
      "image": "wave.png"
    },
    {
      "cardName": "Wizall Money",
      "cardDesc": "Envoyer argent par Wizall Money",
      "image": "wizall.png"
    },
  ];
  List<Card> allCards() {
    return data.map((f) => Card.formJson(f)).toList();
  }
}
