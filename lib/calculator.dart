import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  Widget custombutton(String btnvalue) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 98, 4),
            borderRadius: BorderRadius.circular(20)),
        child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "$btnvalue",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 168, 107),
        title: Text(
          "Calculator",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                custombutton("9"),
                custombutton("8"),
                custombutton("7"),
                custombutton("C"),
              ]),
              Row(children: [
                custombutton("6"),
                custombutton("5"),
                custombutton("4"),
                custombutton("+"),
              ]),
              Row(children: [
                custombutton("3"),
                custombutton("2"),
                custombutton("1"),
                custombutton("-"),
              ]),
              Row(children: [
                custombutton("0"),
                custombutton("/"),
                custombutton("*"),
                custombutton("="),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
