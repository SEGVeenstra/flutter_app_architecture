import 'package:counter_domain/src/core/repository.dart';
import 'package:counter_domain/src/counter/entities/number.dart';

abstract class CounterRepository extends Repository<CounterRepositoryUpdated> {
  Future<void> storeNumber(Number number);
  Future<Number> getNumber();
}

class CounterRepositoryUpdated {}
