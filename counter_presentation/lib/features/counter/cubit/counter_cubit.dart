import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:counter_domain/counter_domain.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(
    this._increment,
    ObserveCounter observeCounter,
  ) : super(const CounterLoading()) {
    _subscription = observeCounter().listen((number) {
      emit(CounterLoaded(number: number));
    });
  }

  final IncrementCounter _increment;
  late final StreamSubscription _subscription;

  Future<void> increment() async {
    await _increment();
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
