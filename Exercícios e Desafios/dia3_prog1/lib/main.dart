import 'package:flutter/material.dart';

void main() {
  runApp(
    meuapp(),
  );
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Galeria de fotos")),
          backgroundColor: Color.fromARGB(255, 44, 221, 206),
        ),
        drawer: Drawer(
          child: menu(),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/imagem/praia.jpg"),
                fit: BoxFit.cover,
              ),
              border: Border.all(width: 0),
              borderRadius: BorderRadius.circular(0)),
          child: conteudo(),
        ),
      ),
    );
  }
}

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(),
        Text(
          "Designed by:",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          "Lucas Rossi",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        Icon(
          Icons.copyright,
          size: 40,
        ),
      ],
    );
  }
}

class conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Minhas viagens",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              height: 200,
              width: 200,
              //color: Colors.green,
              child: Image.asset("asset/imagem/messi.jpg")),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              height: 200,
              width: 300,
              //color: Colors.yellow,
              child: Image.asset("asset/imagem/noronha.jpg")),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Curta e compartilhe!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.all(4)),
              Icon(Icons.add_comment_sharp),
            ],
          ),
        ],
      ),
    );
  }
}
