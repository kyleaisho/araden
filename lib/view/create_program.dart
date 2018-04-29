import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:muscle_memory/model/app_state.dart';
import 'package:muscle_memory/action/add_program.dart';


class CreateProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return StoreConnector<AppState, Function>(
      converter: (store) => (text) => store.dispatch(AddProgram(program: text)),
      builder: (context, Function update) {
        return Scaffold(
          appBar: AppBar(title: Text('Create Program')),
          body: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: controller,
                  onSubmitted: (text) {
                    if (text.length > 0) {
                      update(text);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}