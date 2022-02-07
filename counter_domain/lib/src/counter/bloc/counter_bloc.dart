import 'package:bloc/bloc.dart';
import 'package:counter_domain/counter_domain.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository _counterRepository;

  CounterBloc(this._counterRepository) : super(CounterLoading()) {
    on<CounterIncrement>(
      (event, emit) {
        if (state is CounterLoaded) {
          final currentState = state as CounterLoaded;
          emit(CounterLoaded(
              number: Number(value: currentState.number.value + 1)));
        }
      },
    );
    on<CounterLoad>((event, emit) {
      emit(CounterLoaded(number: event.number));
    });

    _counterRepository.getNumber().then((value) async {
      await Future.delayed(Duration(seconds: 3));
      add(CounterLoad(number: value));
    });
  }
}
