

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

// doc for animate_do => https://pub.dev/packages/animate_do

/*

ajouter une image test :

child: Image(image: AssetImage('path'))

*/

// Lancement app

void main() => runApp(GestMoney());

// Setup color

const primaryBg = Color(0xFF000022); // 000022
const primary = Color(0xFFDC2A58); // DC2A58
const primaryBgAccent = Color(0xFF002382); // 002382
const secondaryBG = Color(0xFF001242); // 001242
const tertiaryBG = Color(0xFF2D4481); // 2D4481
const fourthBG = Color(0xFF050B1C); // 050B1C
const colorOfTextGestMoney = Color(0xFF337099); //
const colorOfText = Color(0xFFBABABA); //

// App

class GestMoney extends StatelessWidget {
  const GestMoney({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GestMoney",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(
            "Bienvenue",
            style: TextStyle(color: colorOfText, fontSize: 30, fontWeight: FontWeight.w800),
          ),
              ),



          backgroundColor: fourthBG,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            TextContainer(),
            ButtonContainer(),
            FollowContainer()
          ],
        ),
        backgroundColor: fourthBG,
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: const [
              Center(child:
              Text(
                  "GestMoney",
                  style: TextStyle(color: colorOfTextGestMoney, fontSize: 40, fontWeight: FontWeight.w500),
              )
                ,),
                  Center(
                    child: Text(
                        "Gère tes comptes sans aucun problème",
                      style: TextStyle(color: colorOfText, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  )
          ]
          ),
          // color: Colors.red,
        ),
      ],
    );
  }
}

class ButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Row(
        children: [
          Container(
              color: fourthBG,
              width: 411.4,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
                  child: RaisedButton(onPressed: () {},
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    color: secondaryBG,
                    child: const Text(
                      "Connexion",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  )
              ),
              Container(height: 30, color: Colors.transparent),
              Center(
                  child: RaisedButton(onPressed: () {},
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    color: secondaryBG,
                    child: const Text(
                      "Inscription",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  )
              )
            ],
          )
          ),

          ],
      );
  }
}

/*

class FollowContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: Align(
          alignment: Alignment.bottomCenter,
          child: Text("Suivez nous sur", style: TextStyle(color: colorOfText),)
          ,)
        ),

        Center(child: Align(
          child: const [Expanded(child: Icon(Icons.help_outline))
          ,)
        )
      ],
    );
  }
}

 */
class FollowContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ Container(
            color: Colors.red,
            height: 214.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Suivez nous sur", style: TextStyle(color: colorOfText),)
                  ,),
              ],
            )
        ),

        ],
      ),
    );
  }
}