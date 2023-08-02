import 'package:flutter/material.dart';

void main() => runApp(const Appointment());

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'TIPS';
    

    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(197, 255, 126, 165),
          title: Text('TIPS'),
          centerTitle: true,
        ),
        body:
         ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Get regular exercise.'),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Eat healthy, regular meals and stay hydrated.'),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Make sleep a priority.'),
            ),
                        ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Try a relaxing activity.'),
            ),
                        ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Set goals and priorities.'),
            ),
                        ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Practice gratitude.'),
            ),
                        ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Focus on positivity.'),
            ),
                        ListTile(
              leading: Icon(Icons.adjust),
              title: Text('Stay connected.'),
            ),
       

          ],
        ),
      ),
    );
  }
}