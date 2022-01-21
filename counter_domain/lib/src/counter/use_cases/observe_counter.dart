import '../counter.dart';

class ObserveCounter {
  const ObserveCounter(this._repository);

  final CounterRepository _repository;

  Stream<Number> call() => _repository.updates.asyncMap(
        (event) async => await _repository.getNumber(),
      );
}
