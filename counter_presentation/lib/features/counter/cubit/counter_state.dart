part of 'counter_cubit.dart';

@immutable
abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object?> get props => [];
}

class CounterLoading extends CounterState {
  const CounterLoading();
}

class CounterLoaded extends CounterState {
  const CounterLoaded({required this.number});

  final Number number;

  @override
  List<Object?> get props => [
        ...super.props,
        number,
      ];
}
