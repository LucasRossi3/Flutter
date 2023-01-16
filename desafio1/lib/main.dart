import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 242, 37),
        appBar: AppBar(
          title: Text("Melhor aplicativo"),
          backgroundColor: Color.fromARGB(255, 80, 223, 36),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mobile e IoT",
                  style: TextStyle(fontSize: 40),
                ),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                      child: Text(
                    "Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
