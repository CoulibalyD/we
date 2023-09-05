class Card {
  String cardName;
  String cardDesc;
  String image;

  Card({required this.cardName, required this.cardDesc, required this.image});

  factory Card.formJson(Map<String, dynamic> json) {
    return Card(
        cardName: json['cardName'],
        cardDesc: json['cardDesc'],
        image: json['image']);
  }
}
