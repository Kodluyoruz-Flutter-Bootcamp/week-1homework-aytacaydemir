import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool next = false;
  String islem = "";
  String num1 = "";
  String num2 = "";
  String result = "";

  calculate(String calculateButton) {
    setState(() {
      if (calculateButton == "AC") {
        result = "";
        num1 = "";
        num2 = "";
        next = false;
        islem = "";
      } else if (calculateButton == "C") {
      } else if (calculateButton == "+") {
        islem = "+";
        next = true;
      } else if (calculateButton == "-") {
        islem = "-";
        next = true;
      } else if (calculateButton == "*") {
        islem = "x";
        next = true;
      } else if (calculateButton == "/") {
        islem = "/";
        next = true;
      } else if (calculateButton == "%") {
        islem = "%";
        next = true;
      } else if (calculateButton == "=") {
        double a = double.parse(num1);
        double b = double.parse(num2);

        if (islem == "+") {
          double c = a + b;
          result = '$c';
        } else if (islem == "-") {
          double c = a - b;
          result = '$c';
        } else if (islem == "x") {
          double c = a * b;
          result = '$c';
        } else if (islem == "/") {
          double c = a / b;
          result = '$c';
        } else if (islem == "%") {
          double c = a % b;
          result = '$c';
        }
      } else {
        if (next == false) {
          num1 += calculateButton;
        } else {
          num2 += calculateButton;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: const TextStyle(fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'result= $result ',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            'equation= $num1' + ' ' '$islem' + ' ' + '$num2 ',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text(''),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("%");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('%'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("C");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('C'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("AC");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('AC'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  calculate("7");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('7'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("8");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('8'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("9");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('9'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("/");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('/'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  calculate("4");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('4'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("5");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('5'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("6");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('6'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("*");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Icon(Icons.close),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                shape: const RoundedRectangleBorder(),
                onPressed: () {
                  calculate("1");
                },
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('1'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("2");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('2'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("3");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('3'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("-");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Icon(Icons.minimize),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  calculate("0");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('0'),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate(",");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text(','),
              ),
              FloatingActionButton(
                onPressed: () {
                  calculate("=");
                },
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Text('='),
              ),
              FloatingActionButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.red,
                splashColor: Colors.purple,
                hoverColor: Colors.green,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
