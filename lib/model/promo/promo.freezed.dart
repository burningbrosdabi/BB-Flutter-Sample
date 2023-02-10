// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Promo _$PromoFromJson(Map<String, dynamic> json) {
  return _Promo.fromJson(json);
}

/// @nodoc
mixin _$Promo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  double get discount_rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCopyWith<Promo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCopyWith<$Res> {
  factory $PromoCopyWith(Promo value, $Res Function(Promo) then) =
      _$PromoCopyWithImpl<$Res>;
  $Res call({int id, String title, String note, double discount_rate});
}

/// @nodoc
class _$PromoCopyWithImpl<$Res> implements $PromoCopyWith<$Res> {
  _$PromoCopyWithImpl(this._value, this._then);

  final Promo _value;
  // ignore: unused_field
  final $Res Function(Promo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? discount_rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      discount_rate: discount_rate == freezed
          ? _value.discount_rate
          : discount_rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PromoCopyWith<$Res> implements $PromoCopyWith<$Res> {
  factory _$$_PromoCopyWith(_$_Promo value, $Res Function(_$_Promo) then) =
      __$$_PromoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String note, double discount_rate});
}

/// @nodoc
class __$$_PromoCopyWithImpl<$Res> extends _$PromoCopyWithImpl<$Res>
    implements _$$_PromoCopyWith<$Res> {
  __$$_PromoCopyWithImpl(_$_Promo _value, $Res Function(_$_Promo) _then)
      : super(_value, (v) => _then(v as _$_Promo));

  @override
  _$_Promo get _value => super._value as _$_Promo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? discount_rate = freezed,
  }) {
    return _then(_$_Promo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      discount_rate: discount_rate == freezed
          ? _value.discount_rate
          : discount_rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Promo implements _Promo {
  _$_Promo(
      {required this.id,
      required this.title,
      required this.note,
      this.discount_rate = 1});

  factory _$_Promo.fromJson(Map<String, dynamic> json) =>
      _$$_PromoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String note;
  @override
  @JsonKey()
  final double discount_rate;

  @override
  String toString() {
    return 'Promo(id: $id, title: $title, note: $note, discount_rate: $discount_rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Promo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.discount_rate, discount_rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(discount_rate));

  @JsonKey(ignore: true)
  @override
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      __$$_PromoCopyWithImpl<_$_Promo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromoToJson(
      this,
    );
  }
}

abstract class _Promo implements Promo {
  factory _Promo(
      {required final int id,
      required final String title,
      required final String note,
      final double discount_rate}) = _$_Promo;

  factory _Promo.fromJson(Map<String, dynamic> json) = _$_Promo.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get note;
  @override
  double get discount_rate;
  @override
  @JsonKey(ignore: true)
  _$$_PromoCopyWith<_$_Promo> get copyWith =>
      throw _privateConstructorUsedError;
}
