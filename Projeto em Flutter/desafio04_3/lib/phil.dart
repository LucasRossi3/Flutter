import 'package:desafio04_2/constants.dart';
import 'package:desafio04_2/menu.dart';
import 'package:desafio04_2/pagina1.dart';
import 'package:flutter/material.dart';

class phil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: conteudophil(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Biografia Phil Collins"),
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

class conteudophil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(40)),
        Expanded(
          child: Stack(
            children: [
              SizedBox(
                height: 670,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Container(
                              width: 170,
                              child: Text(
                                'Phil Collins',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Container(
                              width: 170,
                              child: Text(
                                '  Phil collins ?? um m??sico, compositor e cantor brit??nico conhecido por ser o baterista e vocalista da banda genesis e por sua carreira solo bem-sucedida. Ele nasceu em 1951 em londres, inglaterra e come??ou sua carreira musical no final da d??cada de 1960 como baterista da banda genesis. Collins tornou-se o vocalista principal da banda na d??cada de 1970 e ajudou a lev??-los ao sucesso com ??lbuns como ???invisible touch??? e ???we can???t dance???. ',
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 340,
                              width: 130,
                              margin: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding,
                                  vertical: kDefaultPadding / 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/phil4.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(4)),
                  Container(
                    width: 320,
                    child: Text(
                      '  Em 1981, collins lan??ou seu primeiro ??lbum solo, ???face value???, que incluiu o hit ???in the air tonight???. Ao longo da d??cada de 1980 e 1990, Collins continuou a lan??ar ??lbuns de sucesso e a fazer turn??s internacionais, estabelecendo-se como uma das maiores estrelas da m??sica pop.Al??m de sua carreira musical, Collins tamb??m atuou em filmes e comp??s trilhas sonoras para v??rios filmes, incluindo ???Buster??? e ???Tarzan???. Ele ganhou v??rios pr??mios, incluindo Grammy Awards e Ivor Novello Awards, e ?? considerado um dos m??sicos mais influentes e vers??teis de sua gera????o. Apesar de ter se aposentado da m??sica nos anos 2000, Phil Collins continua a se apresentar e gravar, e ?? elogiado por seu legado na m??sica popular.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
