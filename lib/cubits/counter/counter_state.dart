part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int counter;

  CounterState({
    required this.counter,
  });

  // CounterState의 initial state로 활용하기 위한 CounterState.initial이란 factory constructor를 하나 만들겠습니다.
  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'CounterState(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}