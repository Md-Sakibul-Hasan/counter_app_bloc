import 'package:bloc/bloc.dart';
import 'package:counterapp_using_bloc/bloc/counter/counter_event.dart';
import 'package:counterapp_using_bloc/bloc/counter/counter_state.dart';


class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {

    on<IncrementCounter>((event, emit) {
      emit(state.copyWith(counter: state.count+1));
    });

    on<DecrementCounter>((event, emit) {
      emit(state.copyWith(counter: state.count-1));
    });
  }
}
