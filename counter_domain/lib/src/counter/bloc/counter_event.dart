part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncrement extends CounterEvent {
  const CounterIncrement();
}

class CounterLoad extends CounterEvent {
  final Number number;
  const CounterLoad({required this.number});

  @override
  List<Object> get props => [
        ...super.props,
        number,
      ];
}
