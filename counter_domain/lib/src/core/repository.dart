import 'dart:async';

abstract class Repository<T> {
  final _streamController = StreamController<T>();

  Stream<T> get updates => _streamController.stream;

  void emit(T update) {
    _streamController.add(update);
  }
}
