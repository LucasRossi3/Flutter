import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cartão de visita"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  "Linha 1",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.indigo,
                  ),
                ),
                Text(
                  "Linha 2",
                  style: TextStyle(
                    fontSize: 40,
                    backgroundColor: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Linha 3",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icons
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
