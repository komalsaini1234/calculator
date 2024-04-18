import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  int firstnum = 0;
  int secondnum = 0;
  late String texttodisplay = "";
  String optoperform = "";
  late String res;
  void onbtnclicked(String btnvalue) {
    if (btnvalue == "C") {
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnvalue == "+" ||
        btnvalue == "-" ||
        btnvalue == "*" ||
        btnvalue == "/") {
      firstnum = int.parse(texttodisplay);
      res = "";
      optoperform = btnvalue;
    } else if (btnvalue == "=") {
      secondnum = int.parse(texttodisplay);
      if (optoperform == "+") {
        res = (firstnum + secondnum).toString();
      }
      if (optoperform == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (optoperform == "*") {
        res = (firstnum * secondnum).toString();
      }
      if (optoperform == "/") {
        res = (firstnum / secondnum).toString();
      }
    } else {
      res = int.parse(texttodisplay + btnvalue).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  Widget custombutton(String btnvalue) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 98, 4),
            borderRadius: BorderRadius.circular(20)),
        child: OutlinedButton(
            onPressed: () => onbtnclicked(btnvalue),
            child: Text(
              btnvalue,
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
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    texttodisplay,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
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
