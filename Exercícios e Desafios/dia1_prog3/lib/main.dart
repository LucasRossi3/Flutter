import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 22, 131, 221),
        appBar: AppBar(
          title: Center(
            child: Text(
              "Programa de férias - FIT",
              style: TextStyle(
                fontFamily: 'Times',
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 50, 23, 205),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text(
                  "Meus Icones:",
                  style: TextStyle(fontSize: 40),
                ),
                Icon(
                  Icons.favorite_border,
                  size: 100,
                ),
                Icon(
                  Icons.thumb_up,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
