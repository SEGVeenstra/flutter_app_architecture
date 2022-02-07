part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterLoading extends CounterState {
  const CounterLoading();
}

class CounterLoaded extends CounterState {
  final Number number;
  const CounterLoaded({required this.number});

  @override
  List<Object> get props => [
        ...super.props,
        number,
      ];
}
