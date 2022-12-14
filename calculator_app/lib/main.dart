import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '0';
  String equation = '0';
  String expression = '';
  double equationFontSize = 38.0;
  double resultFontSize = 40.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
      } else if (buttonText == '⌫') {
      } else if (buttonText == '=') {
      } else if (equation == '0') {
        equation = buttonText;
      } else {
        equation = buttonText + equation;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 30, bottom: 0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                equation,
                style: TextStyle(fontSize: equationFontSize),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 20, bottom: 0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                result,
                style: TextStyle(fontSize: resultFontSize),
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        reusable_button(
                          buttonColor: Colors.redAccent,
                          buttonHeight: 1,
                          buttonText: 'C',
                        ),
                        reusable_button(
                          buttonColor: Colors.blue,
                          buttonHeight: 1,
                          buttonText: '⌫',
                        ),
                        reusable_button(
                          buttonColor: Colors.blue,
                          buttonHeight: 1,
                          buttonText: '÷',
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '9',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '8',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '7',
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '6',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '5',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '4',
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '3',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '2',
                        ),
                        reusable_button(
                            buttonColor: Colors.black54,
                            buttonHeight: 1,
                            buttonText: '1',
                            buttonPressed: buttonPressed('1')),
                      ],
                    ),
                    TableRow(
                      children: [
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '.',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '0',
                        ),
                        reusable_button(
                          buttonColor: Colors.black54,
                          buttonHeight: 1,
                          buttonText: '00',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      reusable_button(
                          buttonColor: Colors.blue,
                          buttonHeight: 1,
                          buttonText: '×'),
                    ]),
                    TableRow(children: [
                      reusable_button(
                          buttonColor: Colors.blue,
                          buttonHeight: 1,
                          buttonText: '-'),
                    ]),
                    TableRow(children: [
                      reusable_button(
                          buttonColor: Colors.blue,
                          buttonHeight: 1,
                          buttonText: '+'),
                    ]),
                    TableRow(children: [
                      reusable_button(
                        buttonColor: Colors.redAccent,
                        buttonHeight: 2,
                        buttonText: '=',
                        buttonPressed: buttonPressed('='),
                      ),
                    ])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class reusable_button extends StatelessWidget {
  reusable_button({
    required this.buttonColor,
    required this.buttonHeight,
    required this.buttonText,
    this.buttonPressed,
  });
  final Color buttonColor;
  final double buttonHeight;
  final String buttonText;
  final Function? buttonPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(
            color: Colors.white,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        onPressed: () => buttonPressed!(buttonText),
      ),
    );
  }
}
