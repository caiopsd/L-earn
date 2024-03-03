import 'package:flutter/material.dart';
import 'package:learn/widgets/global/backButton.dart';
import 'package:learn/utils/boldSubString.dart';
import 'package:learn/widgets/global/commonButton.dart';

class Page01 extends StatelessWidget {
  final PageController pageController;

  Page01({
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        fontFamily: "Fieldwork-Geo");

    const TextStyle textStyleBold = TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: "Fieldwork-Geo");

    return Scaffold(
        body: Stack(alignment: AlignmentDirectional.center, children: [
      Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0XFF7A7FFF),
            Color(0XFF040862),
          ],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 64,
            ),
            LearnBackButton(
              buttonColor: const Color(0xFFFFFFFF),
              iconColor: const Color(0xff101573),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 64,
            ),
            RichText(
                text: const TextSpan(
                    children: [
                  TextSpan(
                    text:
                        "Nessa lanchonete, existem 3 tipos de lanches, com preços diferentes: lanches de R\$20, lanches de R\$30 e lanches de R\$40. Bem, a Connie não tem como saber o que vai ter vontade de comer durante o filme, né? Mas para ",
                  ),
                  TextSpan(
                    text: "garantir que ela vai ter dinheiro suficiente",
                    style: textStyleBold,
                  ),
                  TextSpan(
                    text: "para escolher qualquer um dos 3 tipos de lanches...",
                  ),
                ],
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Fieldwork-Geo"))),
            const SizedBox(
              height: 120,
            ),
            Center(
              child: Image.asset(
                "assets/images/mascote/mascot-sad.png",
                height: 240,
              ),
            ),
          ],
        ),
      ),
      Positioned(
          bottom: 120,
          child: LearnButton(
            text: const Text(
              "Continuar",
              style: TextStyle(
                color: Color(0xff101573),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Fieldwork-Geo",
              ),
            ),
            buttonColor: const Color(0xFFFFFFFF),
            onPressed: () {
              pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
          ))
    ]));
  }
}
