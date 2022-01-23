import 'dart:async';

import '../counter.dart';

class ObserveCounter {
  ObserveCounter(this._repository) {
    _repository.updates.listen((_) async {
      _streamController.add(await _repository.getNumber());
    });
    _repository.getNumber().then((number) => _streamController.add(number));
  }

  final CounterRepository _repository;
  final _streamController = StreamController<Number>();

  Stream<Number> call() => _streamController.stream;
}
