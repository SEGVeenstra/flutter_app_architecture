import '../counter.dart';

class ObserveCounter {
  const ObserveCounter(this._repository);

  final CounterRepository _repository;

  Stream<Number> call() => _repository.asyncMap(
        (event) async => await _repository.getNumber(),
      );
}
