import 'package:counter_domain/counter_domain.dart';

class IncrementCounter {
  IncrementCounter(this._repository);

  final CounterRepository _repository;

  Future<void> call() async {
    final currentNumber = await _repository.getNumber();
    await _repository.storeNumber(
      currentNumber.copyWith(value: currentNumber.value + 1),
    );
  }
}
