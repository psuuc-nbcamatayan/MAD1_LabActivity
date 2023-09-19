import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[800],
        scaffoldBackgroundColor: Colors.purple[100],
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('CAMATAYAN_MAD1_LabActivity')),
        body: MyProfile(),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowProfile(data: ['Name:', 'Nerfie Noriel Efferson B. Camatayan']),
          SizedBox(height: 16),
          RowProfile(
              data: ['Address:', 'National Road Balon Anito Mariveles, Bataan']),
          SizedBox(height: 16),
          RowProfile(
            data: [
              'Bio:',
              "I'm a somewhat boring guy. I play games, I read stuff, I make music sometimes, and sometimes I just blank out and stare into nothingness. That's all."
            ],
          ),
        ],
      ),
    );
  }
}

class RowProfile extends StatelessWidget {
  final List<String> data;

  RowProfile({required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            data[0],
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 2, // Centered widget takes twice as much space
          child: Text(
            data[1],
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(), // Empty widget to take up space on the right
        ),
      ],
    );
  }
}