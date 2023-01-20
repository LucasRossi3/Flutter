import 'package:desafio04_2/constants.dart';
import 'package:desafio04_2/menu.dart';
import 'package:desafio04_2/pagina1.dart';
import 'package:flutter/material.dart';

class pagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: conteudopagina4(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Cartão de visitas"),
        actions: [
          Container(
            width: 30,
            child: IconButton(
              padding: EdgeInsets.only(right: 6),
              onPressed: () {},
              icon: Icon(Icons.fingerprint),
            ),
          )
        ],
        backgroundColor: Color(0xFF035AA6),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class conteudopagina4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      child: Text(""),
                    ),
                    Padding(
                      padding: EdgeInsets.all(110),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "pagina4");
                      },
                      child: Container(
                        height: 400,
                        width: 100,
                        margin: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding / 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/elvis3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
