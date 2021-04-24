import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statetutorial/bloc/bloc_pattern/counter_event.dart';
import 'package:statetutorial/bloc/bloc_pattern/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterInc) {
      yield CounterState(state.count + 1);
    } else {
      yield CounterState(state.count - 1);
    }
  }
}
