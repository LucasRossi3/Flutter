import 'package:flutter/material.dart';

void main() {
  runApp(meuapp());
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/imagem/campo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: conteudo(),
      ),
    ));
  }
}

class conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(50)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 150,
              //color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/imagem/ceni.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 200,
              width: 150,
              //color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/imagem/neymar.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 150,
              //color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/imagem/messi.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 200,
              width: 150,
              //color: Colors.green,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/imagem/cr7.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(20)),
        Text(
          "Galeria de fotos",
          style: TextStyle(
            fontSize: 40,
            backgroundColor: Colors.blue,
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        SizedBox(
          height: 100,
          width: 200,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(
                  width: 3,
                  color: Colors.black,
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Clique aqui",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
