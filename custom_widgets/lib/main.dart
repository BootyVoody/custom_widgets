import 'package:custom_widgets/custom_paint.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simple Custom Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Разкомментировать этот код если понадобится CustomButton
  // int counter = 0;

  var isNice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Smile(isNice: isNice),
            FlatButton(
              onPressed: () {
              setState(() => isNice = !isNice);
              }, 
            child: Text('Change mod'),
            color: isNice ? Colors.green : Colors.red,
          ),
          ],
        ),
        // Разкомментировать этот код если понадобится Mentor
        // child: ListView(
        //   children: mentorRepo.map((mentor) => MentorListItem(mentor)).toList(),
        // ),
        // Разкомментировать этот код если понадобится CustomButton
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //       'This is the button',
        //       style: TextStyle(
        //         fontSize: 20,
        //       ),
        //     ),
        //     CustomButton(
        //       title: 'Press Custom Button',
        //       onPressed: () {
        //         setState(() => counter++);
        //       },
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Text('$counter'),
        //   ],
        // ),
      ),
    );
  }
}
