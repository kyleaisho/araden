import '../model/app_state.dart';
import '../action/add_program.dart';

AppState reducer(AppState state, action) {
  if (action is AddProgram) {
    return AppState(
      programs: List.from(state.programs)..add(action.program)
    );
  }

  return AppState(programs: state.programs);
}