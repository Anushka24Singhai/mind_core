import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';
import 'package:sa/Self_ASSESSMENT/mainsa.dart';
import 'Consult/TASKBAR/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> _signOut() async {
    await _auth.signOut();
  }
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  var _controller = TextEditingController();

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;

    if (resultScore < 10 && resultScore >= 5) {
      resultText =
          'Mild symptoms of depression.Recommendations- Watchful waiting, self management education and periodic screening.';
      print(resultScore);
    } else if (resultScore >= 10 && resultScore < 15) {
      resultText =
          ' Mild symptoms of major depression. Recommendations- Creation of a treatment and follow up plan, and routine reevaluation.';
      print(resultScore);
    } else if (resultScore >= 15 && resultScore < 20) {
      resultText =
          'Moderately severe symptoms of major depression. We recommend immediate institution of treatment';
      print(resultScore);
    } else if (resultScore >= 20 && resultScore < 30) {
      resultText =
          'Major severe symptoms of major depression. Recommendations- Pharamacotherapy and psychotherapy referral';
      print(resultScore);
    } else {
      resultText =
          'You have shown no symptoms of depression. No action is recommended.';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text

          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
            ),
            onPressed: () {},
            child: Text('0-5: No symptoms of depression\n'
                '5-9: Mild symptoms of depression.\n'
                '10-14: Mild symptoms of major depression.\n'
                '15-19: Moderately severe symptoms of major depression.\n'
                '>=20: Major severe symptoms of major depression.'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyApp2(),
                ),
              );
            },
            child: Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Text(
              'CONSULT WITH DOCTOR',
              style: TextStyle(color: Colors.white),
            ),
          ),
       



          //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
