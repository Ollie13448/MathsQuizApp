import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: 'Math Quiz Game', initialRoute: '/game-menu', routes: {
      '/game-menu': (context) => const GameMenu(),
      '/level0': (context) => const Level0Screen(),
      '/level1': (context) => const Level1Screen(),
      '/level2': (context) => const Level2Screen(),
    }),
  );
}

class GameMenu extends StatelessWidget {
  const GameMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFBDAB1),
        centerTitle: true,
        title: Text(
          'Maths Genius',
          style: TextStyle(
            color: const Color(0xffEE8B60),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: new Column(children: [
          /* Column to add multiple objects */
          Padding(
            /* Space between other elements */
            padding: EdgeInsets.only(left: 62, bottom: 100, right: 60, top: 90),
            child: Text(
              'Choose a level, from the easiest; Level 0 to the hardest; Level 2 !',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold, // Make the text bold
                color: Color(0xffEE8B60),
              ),
            ),
          ),
          Padding(
              /* Space between other elements */
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: SizedBox(
                /* Box of empty space allowing customisable width, height and add visuals inside */
                width: 800.0,
                /* Fill both left to right sides towards screen borders */
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/level0');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xffA0E7E5), // set the background color2
                  ),
                  child: const Text(
                    'Level 0',
                    style: TextStyle(
                        color: Color(0xff1BA7A6),
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Padding(
              /* Space between other elements */
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: SizedBox(
                /* Box of empty space allowing customisable width, height and add visuals inside */
                width: 800.0,
                /* Fill both left to right sides towards screen borders */
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/level1');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xffB4F8C8), // set the background color2
                  ),
                  child: const Text(
                    'Level 1',
                    style: TextStyle(
                        color: Color(0xff18B74B),
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Padding(
              /* Space between other elements */
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: SizedBox(
                /* Box of empty space allowing customisable width, height and add visuals inside */
                width: 800.0,
                /* Fill both left to right sides towards screen borders */
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/level2');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xffFFAEBC), // set the background color2
                  ),
                  child: const Text(
                    'Level 2',
                    style: TextStyle(
                        color: Color(0xffBE3E53),
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}

class Level0Screen extends StatefulWidget {
  const Level0Screen({super.key});

  @override
  _Level0ScreenState createState() => _Level0ScreenState();
}

class _Level0ScreenState extends State<Level0Screen> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _level0Questions = [
    // list of quiz questions for Level 1
    {
      'questionText': 'What is 5 + 3?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '8', 'score': 1},
        {'text': '10', 'score': 0},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 12 - 8?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the square root of 16?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 6 x 4?',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '24', 'score': 1},
        {'text': '36', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 9 ÷ 3?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '4', 'score': 0},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 4 + 5?',
      'answers': [
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '9', 'score': 1},
      ]
    },
    {
      'questionText': 'What is 12 ÷ 2?',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '2', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 10 - 7?',
      'answers': [
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '2', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 8 + 2?',
      'answers': [
        {'text': '11', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '9', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 10 x 2?',
      'answers': [
        {'text': '12', 'score': 0},
        {'text': '20', 'score': 1},
        {'text': '23', 'score': 0},
        {'text': '30', 'score': 0},
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  void _goToGameMenu() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 0 Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _goToGameMenu,
        ),
        backgroundColor: Color(0xFF1BA7A6),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 60, 0),
            child: Text(
              'Score: $_totalScore',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: _questionIndex < _level0Questions.length
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   color: Colors.lightBlueAccent,
                    // ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Text(
                      _level0Questions[_questionIndex]['questionText']
                          .toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1BA7A6),
                      ),
                    ),
                  ),
                  ...(_level0Questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20.5, horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              _answerQuestion(answer['score'] as int),
                          child: Text(
                            answer['text'].toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1BA7A6),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFA0E7E5)),
                          ),
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            )
          : Center(
              child: Text(
                'Your score is $_totalScore',
                style: TextStyle(fontSize: 20),
              ),
            ),
    );
  }
}

class Level1Screen extends StatefulWidget {
  const Level1Screen({super.key});

  @override
  _Level1ScreenState createState() => _Level1ScreenState();
}

class _Level1ScreenState extends State<Level1Screen> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int _timeLeft = 20;
  Timer? _timer;
  final List<Map<String, Object>> _level1Questions = [
    // list of quiz questions for Level 1

    {
      'questionText': 'What is 32 + 32?',
      'answers': [
        {'text': '84', 'score': 0},
        {'text': '64', 'score': 1},
        {'text': '32', 'score': 0},
        {'text': '70', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the square root of 64',
      'answers': [
        {'text': '16', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '8', 'score': 1},
        {'text': '64', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the square root of 16?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 6 x 9?',
      'answers': [
        {'text': '79', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '54', 'score': 1},
        {'text': '36', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 169 ÷ 13?',
      'answers': [
        {'text': '84.5', 'score': 0},
        {'text': '13', 'score': 1},
        {'text': '65', 'score': 0},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 28 + 31?',
      'answers': [
        {'text': '60', 'score': 0},
        {'text': '59', 'score': 1},
        {'text': '47', 'score': 0},
        {'text': '53', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 24 - 9?',
      'answers': [
        {'text': '14', 'score': 0},
        {'text': '18', 'score': 1},
        {'text': '15', 'score': 0},
        {'text': '19', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 14 + 6?',
      'answers': [
        {'text': '20', 'score': 1},
        {'text': '18', 'score': 0},
        {'text': '21', 'score': 0},
        {'text': '17', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 18 ÷ 4?',
      'answers': [
        {'text': '9', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '5', 'score': 1},
      ]
    },
    {
      'questionText': 'What is 27 ÷ 3?',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '9', 'score': 0},
        {'text': '7', 'score': 0},
      ]
    },
  ];

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timer?.cancel();
          _showFailedDialog();
        }
      });
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    _timeLeft = 20;
    _startTimer();
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
      _resetTimer();
    });
  }

  void _showFailedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: const Text('Time is up!'),
            content: const Text(
                'You ran out of time unfortunately. Better luck next time o-o)/'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _goToGameMenu();
                },
                child: const Text('OK'),
              )
            ]);
      },
    );
  }

  void _goToGameMenu() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2 Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _goToGameMenu,
        ),
        backgroundColor: Color(0xFF18B74B),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 60, 0),
            child: Text(
              'Score: $_totalScore',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: _questionIndex < _level1Questions.length
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   color: Colors.green,
                    // ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 73,
                    child: Text(
                      _level1Questions[_questionIndex]['questionText']
                          .toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF18B74B),
                      ),
                    ),
                  ),
                  Text(
                    'Time left: $_timeLeft',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF18B74B),
                    ),
                  ),
                  ...(_level1Questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20.5, horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              _answerQuestion(answer['score'] as int),
                          child: Text(
                            answer['text'].toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF18B74B),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffB4F8C8)),
                          ),
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            )
          : Center(
              child: Text(
                'Your score is $_totalScore',
                style: TextStyle(fontSize: 20),
              ),
            ),
    );
  }
}

class Level2Screen extends StatefulWidget {
  const Level2Screen({super.key});

  @override
  _Level2ScreenState createState() => _Level2ScreenState();
}

class _Level2ScreenState extends State<Level2Screen> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int _timeLeft = 10;
  Timer? _timer;
  final List<Map<String, Object>> _level2Questions = [
    // list of quiz questions for Level 2

    {
      'questionText': 'What is 5 + 3?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '8', 'score': 1},
        {'text': '10', 'score': 0},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the square root of 64',
      'answers': [
        {'text': '16', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '8', 'score': 1},
        {'text': '64', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the square root of 16?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 6 x 4?',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '24', 'score': 1},
        {'text': '36', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 9 ÷ 3?',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 1},
        {'text': '4', 'score': 0},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'questionText': 'What is 43 - 18?',
      'answers': [
        {'text': '30', 'score': 0},
        {'text': '25', 'score': 1},
        {'text': '28', 'score': 0},
        {'text': '23', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 13 + 7?',
      'answers': [
        {'text': '18', 'score': 0},
        {'text': '20', 'score': 1},
        {'text': '22', 'score': 0},
        {'text': '19', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 30 - 11?',
      'answers': [
        {'text': '19', 'score': 1},
        {'text': '20', 'score': 0},
        {'text': '17', 'score': 0},
        {'text': '18', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 12 ÷ 2?',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '6', 'score': 1},
        {'text': '7', 'score': 0},
      ]
    },
    {
      'questionText': 'What is 31 + 45?',
      'answers': [
        {'text': '49', 'score': 0},
        {'text': '56', 'score': 1},
        {'text': '45', 'score': 0},
        {'text': '51', 'score': 0},
      ]
    },
  ];

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timer?.cancel();
          _showFailedDialog();
        }
      });
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    _timeLeft = 10;
    _startTimer();
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
      _resetTimer();
    });
  }

  void _showFailedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: const Text('Time is up!'),
            content: const Text(
                'You ran out of time unfortunately. Better luck next time o-o)/'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _goToGameMenu();
                },
                child: const Text('OK'),
              )
            ]);
      },
    );
  }

  void _goToGameMenu() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2 Quiz'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _goToGameMenu,
        ),
        backgroundColor: Color(0xFFBE3E53),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 60, 0),
            child: Text(
              'Score: $_totalScore',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      body: _questionIndex < _level2Questions.length
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   color: Colors.green,
                    // ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 73,
                    child: Text(
                      _level2Questions[_questionIndex]['questionText']
                          .toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFBE3E53),
                      ),
                    ),
                  ),
                  Text(
                    'Time left: $_timeLeft',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBE3E53),
                    ),
                  ),
                  ...(_level2Questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20.5, horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              _answerQuestion(answer['score'] as int),
                          child: Text(
                            answer['text'].toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBE3E53),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFAEBC)),
                          ),
                        ),
                      ),
                    );
                  }).toList()
                ],
              ),
            )
          : Center(
              child: Text(
                'Your score is $_totalScore',
                style: TextStyle(fontSize: 20),
              ),
            ),
    );
  }
}
