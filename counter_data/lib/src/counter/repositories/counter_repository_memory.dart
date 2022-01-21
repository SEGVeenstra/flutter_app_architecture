import 'dart:async';

import 'package:counter_domain/counter_domain.dart';

class CounterRepositoryMemory extends CounterRepository {
  Number _number = Number(value: 0);

  @override
  Future<Number> getNumber() async {
    return _number;
  }

  @override
  Future<void> storeNumber(Number number) async {
    _number = number;
  }
}
