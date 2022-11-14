import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterCalculatorHome());
}

class FlutterCalculatorHome extends StatelessWidget {
  const FlutterCalculatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlutterCalculatorWidget(),
    );
  }
}

class FlutterCalculatorWidget extends StatefulWidget {
  const FlutterCalculatorWidget({super.key});

  @override
  State<FlutterCalculatorWidget> createState() =>
      _FlutterCalculatorWidgetState();
}

class _FlutterCalculatorWidgetState extends State<FlutterCalculatorWidget> {
  int _operandA = 0;
  int _operandB = 0;
  String _operator = '';
  int _result = 0;
  String _queryString = "";

  addition(int a, int b) {
    return a + b;
  }

  subtraction(int a, int b) {
    return a - b;
  }

  multiplication(int a, int b) {
    return a * b;
  }

  division(int a, int b) {
    return a / b;
  }

  setOperandA(int a) {
    print(a);
    setState(() {
      _operandA = a;
    });
  }

  setOperandB(int b) {
    print(b);
    setState(() {
      _operandB = b;
    });
  }

  setOperation(String operation) {
    setState(() {
      _operator = operation;
    });
  }

  calculateResult(int a, int b, String operation) {
    switch (operation) {
      case '+':
        setState(() {
          _result = addition(a, b);
        });
        break;
      case '-':
        setState(() {
          _result = subtraction(a, b);
        });
        break;
      case '*':
        setState(() {
          _result = multiplication(a, b);
        });
        break;
      case '/':
        setState(() {
          _result = division(a, b);
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                child: Container(
                  color: Colors.black,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("$_operandA $_operator $_operandB = $_result",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Row 1
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 1.54,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text('AC',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const Spacer(),
                        ActionButtons(
                          text: '/',
                          textColor: Colors.white,
                          onTap: () {
                            setOperation('/');
                          },
                        ),
                      ],
                    ),
                    //Row 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButtons(
                          text: '7',
                          textColor: Colors.white,
                          onTap: () {
                            if (_operandA.isNaN) {
                              setOperandA(7);
                            }
                            if (_operandB.isNaN) {
                              setOperandB(7);
                            }
                          },
                        ),
                        ActionButtons(
                          text: '8',
                          textColor: Colors.white,
                          onTap: () {
                            setOperandB(8);
                          },
                        ),
                        ActionButtons(
                          text: '9',
                          textColor: Colors.white,
                          onTap: () {
                            setOperandA(9);
                          },
                        ),
                        ActionButtons(
                          text: '+',
                          textColor: Colors.white,
                          onTap: () {
                            setOperation('+');
                          },
                        ),
                      ],
                    ),
                    //Row 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButtons(
                          text: '4',
                          textColor: Colors.white,
                          onTap: () {
                            if (_operandA == 0) {
                              setOperandA(4);
                            }
                            if (_operandB == 0) {
                              setOperandB(4);
                            }
                          },
                        ),
                        ActionButtons(
                          text: '5',
                          textColor: Colors.white,
                          onTap: () {
                            if (_operandA == 0) {
                              setOperandA(5);
                            }
                            if (_operandB == 0) {
                              setOperandB(5);
                            }
                          },
                        ),
                        ActionButtons(
                            text: '6',
                            textColor: Colors.white,
                            onTap: () {
                              if (_operandA == 0) {
                                setOperandA(6);
                              }
                              if (_operandB == 0) {
                                setOperandB(6);
                              }
                            }),
                        ActionButtons(
                            text: '-',
                            textColor: Colors.white,
                            onTap: () {
                              setOperation('-');
                            }),
                      ],
                    ),
                    //Row 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButtons(
                            text: '1',
                            textColor: Colors.white,
                            onTap: () {
                              if (_operandA == 0) {
                                setOperandA(1);
                              }
                              if (_operandB == 0) {
                                setOperandB(1);
                              }
                            }),
                        ActionButtons(
                            text: '2',
                            textColor: Colors.white,
                            onTap: () {
                              if (_operandA == 0) {
                                setOperandA(2);
                              }
                              if (_operandB == 0) {
                                setOperandB(2);
                              }
                            }),
                        ActionButtons(
                            text: '3',
                            textColor: Colors.white,
                            onTap: () {
                              if (_operandA == 0) {
                                setOperandA(3);
                              }
                              if (_operandB == 0) {
                                setOperandB(3);
                              }
                            }),
                        ActionButtons(
                            text: 'x',
                            textColor: Colors.white,
                            onTap: () {
                              setOperation('*');
                            }),
                      ],
                    ),
                    //Row 5
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width / 2.3,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Center(
                              child: Text('0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold)),
                            )),
                        ActionButtons(
                            text: '.',
                            textColor: Colors.white,
                            onTap: () {
                              //TODO
                            }),
                        ActionButtons(
                            text: '=',
                            textColor: Colors.white,
                            onTap: () {
                              calculateResult(_operandA, _operandB, _operator);
                            }),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function() onTap;

  const ActionButtons(
      {super.key,
      required this.text,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 26, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
