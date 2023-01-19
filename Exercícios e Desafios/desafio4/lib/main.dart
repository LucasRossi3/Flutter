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
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login(),
        "pagina1": (context) => pagina1(),
        "pagina2": (context) => pagina2(),
      },
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      appBar: AppBar(
        title: Text("Cartão de visitas"),
        backgroundColor: Color.fromARGB(225, 7, 142, 160),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(225, 7, 142, 160),
          ),
          currentAccountPicture: Icon(
            Icons.account_circle,
            size: 70,
          ),
          accountName: Text(
            "Lucas Rossi",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "ljmr.rossi@gmail.com",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: (() {
            Navigator.popAndPushNamed(context, "pagina1");
          }),
          child: Row(children: [
            Icon(
              Icons.home,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Center(
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Color.fromARGB(243, 255, 219, 17),
            //onSurface: Colors.white,
            disabledBackgroundColor: Colors.white,
            fixedSize: Size(228, 50),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        TextButton(
          onPressed: (() {
            Navigator.popAndPushNamed(context, "pagina2");
          }),
          child: Row(children: [
            Icon(
              Icons.description,
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Center(
              child: Text(
                "IMC Calculator",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Color.fromARGB(243, 255, 219, 17),
            //onSurface: Colors.white,
            disabledBackgroundColor: Colors.white,
            fixedSize: Size(228, 50),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Text(
          "Developed By",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Lucas Rossi",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.copyright,
          size: 10,
        ),
      ],
    );
  }
}

class pagina2 extends StatelessWidget {
  const pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: conteudopagina2(),
        ),
      ),
      appBar: AppBar(
        title: Text("IMC Calculator"),
        backgroundColor: Color.fromARGB(225, 7, 142, 160),
      ),
      drawer: Drawer(
        child: menu(),
      ),
    );
  }
}

class conteudopagina2 extends StatefulWidget {
  const conteudopagina2({super.key});

  @override
  State<conteudopagina2> createState() => _conteudopagina2State();
}

class _conteudopagina2State extends State<conteudopagina2> {
  int? altura;
  int? peso;
  int? resultado;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(20),
      ),
      Text(
        "Altura",
        style: TextStyle(
            fontSize: 25,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.bold),
      ),
      Container(
        height: 73,
        width: 297,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue),
      ),
      Padding(
        padding: EdgeInsets.all(20),
      ),
      Text(
        "Peso",
        style: TextStyle(
            fontSize: 25,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.bold),
      ),
      Container(
        height: 73,
        width: 297,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue),
      ),
      Padding(
        padding: EdgeInsets.all(20),
      ),
      TextButton(
        onPressed: (() {}),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.all(18),
          ),
          Icon(
            Icons.calculate,
            size: 35,
          ),
          Padding(
            padding: EdgeInsets.all(15),
          ),
          Center(
            child: Text(
              "Calcular",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Color.fromARGB(243, 255, 219, 17),
          //onSurface: Colors.white,
          disabledBackgroundColor: Colors.white,
          fixedSize: Size(293, 73),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      Padding(padding: EdgeInsets.all(20)),
      Text(
        "Resultado",
        style: TextStyle(
            fontSize: 25,
            fontFamily: 'RobotoMono',
            fontWeight: FontWeight.bold),
      ),
      Container(
        height: 73,
        width: 297,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue),
      ),
    ]);
  }
}

class login extends StatelessWidget {
  String? email;
  String? senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                  print(email);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                onChanged: (value) {
                  senha = value;
                  print(senha);
                },
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              TextButton(
                onPressed: () {
                  if (email == "oi" && senha == "oi") {
                    print("Login Autorizado");
                    Navigator.popAndPushNamed(context, "pagina1");
                  } else {
                    print("Usuário ou senha incorreto");
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Color.fromARGB(243, 255, 219, 17),
                  //onSurface: Colors.white,
                  disabledBackgroundColor: Colors.white,
                  fixedSize: Size(120, 50),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
