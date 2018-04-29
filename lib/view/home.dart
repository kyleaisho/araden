import 'package:flutter/material.dart';
import 'package:muscle_memory/strings.dart';
import 'package:muscle_memory/view/create_program.dart';
import 'package:muscle_memory/view/program_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(APP_TITLE),
      ),
      body: ProgramList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateProgram()),
          );
        },
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        // foregroundColor: Colors.white,
        child: new Icon(Icons.add),
      ),
    );
  }
}