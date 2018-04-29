import 'package:flutter/material.dart';
import 'package:muscle_memory/model/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:muscle_memory/reducer/reducer.dart';
import 'package:muscle_memory/theme/theme.dart';
import 'package:muscle_memory/strings.dart';
import 'package:muscle_memory/view/home.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  final store = new Store<AppState>(
    reducer,
    initialState: AppState.initalState()
  );
  
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: APP_TITLE,
        theme: defaultTheme,
        home: new Home(),
      ),
    );
  }
}