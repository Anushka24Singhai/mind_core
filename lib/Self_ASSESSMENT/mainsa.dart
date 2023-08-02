import 'package:flutter/material.dart';

import 'quiz.dart';
import '../result.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2> {
  final _questions = const [
    {
      'questionText':
          'Over the last 2 weeks, how often have you been bothered by any of the following problems',
      'answers': [
        {'text': 'Start', 'score': 0},
      ],
    },
    {
      'questionText': 'Q1. Little Interest or Pleasure in doing things',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText': 'Q2. Feeling down, depresssed, or hopeless?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          ' Q3. Trouble felling or staying asleep, or sleep too much',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText': 'Q4. Feeling tired or having little energy',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText': 'Q5. Poor appetite or over eating',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q6. Feeling bad about yourself- or that you are a failure or have let yourself or your family down',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q7. Trouble concentrating on things, such as reading the newspaper or watching television',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q8. Moving or speaking so slowly that other people could notice or have been moving around alot more than usual',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q9. Thoughts you would be better off dead or of hurting youself in some way',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly everyday', 'score': 3},
      ],
    },
    {
      'questionText':
          'Q10. If you checked off any problems, how difficult have these problems made it for you get along with other people',
      'answers': [
        {'text': 'Not difficult at all', 'score': 0},
        {'text': 'Somewhat difficult', 'score': 1},
        {'text': 'Very difficult', 'score': 2},
        {'text': 'Extremely difficult', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /*appBar: AppBar(
		title: Text('SELF ASSESMENT'),
    centerTitle: true,
    
		backgroundColor: Color.fromARGB(255, 17, 151, 241)
		),*/
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(239, 250, 218, 115),
                Color.fromARGB(255, 217, 133, 250),
                //Color.fromARGB(255, 245, 152, 172),
                //Color.fromARGB(255, 255, 169, 198),
              ],
            )),

            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    ) //Quiz
                  : Result(_totalScore, _resetQuiz),
            ), //Padding
          ), //Scaffold
        ),
      ),
    ); //MaterialApp
  }
}
