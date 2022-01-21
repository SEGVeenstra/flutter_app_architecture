import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'number.g.dart';

@CopyWith()
class Number extends Equatable {
  Number({required this.value});

  final int value;

  @override
  List<Object?> get props => [value];
}
