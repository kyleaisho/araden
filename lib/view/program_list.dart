import 'package:flutter/material.dart';
import 'package:muscle_memory/model/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ProgramList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, List<String>>(
      converter: (store) => store.state.programs,
      builder: (context, programs) {
        if (programs.length > 0) {
          return Center(
            child: ListView.builder(
              itemCount: programs.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: new Text(programs[i]),
                );
              },
            ),
          );
        } else {
          return Center(child: new Text('No Programs yet'),);
        }
      },
    );
  }
}