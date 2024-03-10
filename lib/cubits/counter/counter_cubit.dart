import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  // 외부에서 호출할 수 있는 함수
  void increment() {
    // emit(state.copyWith(counter: state.counter + 1));
    final newState = state.copyWith(counter: state.counter + 1);
    print(newState);
    emit(newState);
  }

  // 외부에서 호출할 수 있는 함수
  void decrement() {
    emit(state.copyWith(counter: state.counter - 1));
  }
}