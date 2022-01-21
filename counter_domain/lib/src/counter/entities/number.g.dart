// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NumberCWProxy {
  Number value(int value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Number(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Number(...).copyWith(id: 12, name: "My name")
  /// ````
  Number call({
    int? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNumber.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNumber.copyWith.fieldName(...)`
class _$NumberCWProxyImpl implements _$NumberCWProxy {
  final Number _value;

  const _$NumberCWProxyImpl(this._value);

  @override
  Number value(int value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Number(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Number(...).copyWith(id: 12, name: "My name")
  /// ````
  Number call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return Number(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as int,
    );
  }
}

extension $NumberCopyWith on Number {
  /// Returns a callable class that can be used as follows: `instanceOfclass Number extends Equatable.name.copyWith(...)` or like so:`instanceOfclass Number extends Equatable.name.copyWith.fieldName(...)`.
  _$NumberCWProxy get copyWith => _$NumberCWProxyImpl(this);
}
