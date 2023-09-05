import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kwiku/component/splash/splashScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Bienvenue',
      body:
          'Bienvenue dans le monde de "KwiKu," votre partenaire financier tout-en-un.',
      image: Center(
        child: SizedBox(
          height: 700,
          width: 700,
          child: Lottie.asset('assets/card.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Gestion des Comptes',
      body:
          "Ajoutez, gérez et suivez vos comptes de mobile money, cartes bancaires et crypto-monnaies en un clin d'œil.",
      image: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Lottie.asset('assets/auth.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Paiements Simplifiés',
      body:
          'Payez vos factures, effectuez des transferts nationaux et internationaux, achetez des crypto-monnaies et plus encore, le tout depuis une seule application.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/transac.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Intégration des Services de Mobile Money',
      body:
          'Effectuez des transferts d\'argent, payez des factures et achetez des crédits téléphoniques avec les services de mobile money populaires au Sénégal, le tout depuis "KwiKu".',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/mobile_money.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Paiements en Ligne',
      body:
          'Réglez vos achats en ligne en toute simplicité auprès de nos commerçants partenaires. Nous offrons également un plugin pour intégrer notre service de paiement sur vos sites web préférés.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/online_payment.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Transferts Monétaires Internationaux',
      body:
          'Envoyez de l\'argent partout dans le monde avec des taux de change en temps réel pour faciliter les transferts internationaux.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/international_money_transfer.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Achat et Vente de Crypto-monnaies',
      body:
          'Achetez, vendez et gérez vos crypto-monnaies directement depuis "KwiKu" en utilisant nos plateformes d\'échange intégrées.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/crypto.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Émission de Cartes Bancaires',
      body:
          'Émettez des cartes bancaires virtuelles ou physiques pour effectuer des paiements en ligne et en magasin en toute simplicité.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/bank_card1.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Notifications en Temps Réel',
      body:
          'Restez informé des transactions importantes et des mises à jour concernant votre compte grâce à nos notifications push.',
      image: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset('assets/notifications.json'),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    // Ajoutez ici d'autres PageViewModel pour couvrir toutes les fonctionnalités.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(7, 7),
            color: Colors.black38,
            activeSize: Size.square(5),
            activeColor: Colors.greenAccent,
          ),
          showDoneButton: true,
          done: const Text(
            'Prêt',
            style: TextStyle(fontSize: 20, color: Colors.greenAccent),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: Colors.greenAccent),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.greenAccent,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreen()),
    );
  }
}
