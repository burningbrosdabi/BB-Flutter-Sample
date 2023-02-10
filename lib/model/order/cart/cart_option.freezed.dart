// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartOption _$CartOptionFromJson(Map<String, dynamic> json) {
  return DefaultCartOption.fromJson(json);
}

/// @nodoc
mixin _$CartOption {
  int? get pk => throw _privateConstructorUsedError;
  @JsonKey(name: product_field)
  Product get product => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get is_free => throw _privateConstructorUsedError;
  @JsonKey(readValue: CartOption.genUniqueId)
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: is_delete_field)
  bool get is_delete => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  bool get is_new => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartOptionCopyWith<CartOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOptionCopyWith<$Res> {
  factory $CartOptionCopyWith(
          CartOption value, $Res Function(CartOption) then) =
      _$CartOptionCopyWithImpl<$Res>;
  $Res call(
      {int? pk,
      @JsonKey(name: product_field) Product product,
      String? note,
      int quantity,
      bool is_free,
      @JsonKey(readValue: CartOption.genUniqueId) String uid,
      @JsonKey(name: is_delete_field) bool is_delete,
      @JsonKey(ignore: true) bool is_new});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartOptionCopyWithImpl<$Res> implements $CartOptionCopyWith<$Res> {
  _$CartOptionCopyWithImpl(this._value, this._then);

  final CartOption _value;
  // ignore: unused_field
  final $Res Function(CartOption) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? product = freezed,
    Object? note = freezed,
    Object? quantity = freezed,
    Object? is_free = freezed,
    Object? uid = freezed,
    Object? is_delete = freezed,
    Object? is_new = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      is_free: is_free == freezed
          ? _value.is_free
          : is_free // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      is_delete: is_delete == freezed
          ? _value.is_delete
          : is_delete // ignore: cast_nullable_to_non_nullable
              as bool,
      is_new: is_new == freezed
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$DefaultCartOptionCopyWith<$Res>
    implements $CartOptionCopyWith<$Res> {
  factory _$$DefaultCartOptionCopyWith(
          _$DefaultCartOption value, $Res Function(_$DefaultCartOption) then) =
      __$$DefaultCartOptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? pk,
      @JsonKey(name: product_field) Product product,
      String? note,
      int quantity,
      bool is_free,
      @JsonKey(readValue: CartOption.genUniqueId) String uid,
      @JsonKey(name: is_delete_field) bool is_delete,
      @JsonKey(ignore: true) bool is_new});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$DefaultCartOptionCopyWithImpl<$Res>
    extends _$CartOptionCopyWithImpl<$Res>
    implements _$$DefaultCartOptionCopyWith<$Res> {
  __$$DefaultCartOptionCopyWithImpl(
      _$DefaultCartOption _value, $Res Function(_$DefaultCartOption) _then)
      : super(_value, (v) => _then(v as _$DefaultCartOption));

  @override
  _$DefaultCartOption get _value => super._value as _$DefaultCartOption;

  @override
  $Res call({
    Object? pk = freezed,
    Object? product = freezed,
    Object? note = freezed,
    Object? quantity = freezed,
    Object? is_free = freezed,
    Object? uid = freezed,
    Object? is_delete = freezed,
    Object? is_new = freezed,
  }) {
    return _then(_$DefaultCartOption(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      is_free: is_free == freezed
          ? _value.is_free
          : is_free // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      is_delete: is_delete == freezed
          ? _value.is_delete
          : is_delete // ignore: cast_nullable_to_non_nullable
              as bool,
      is_new: is_new == freezed
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$DefaultCartOption extends DefaultCartOption {
  _$DefaultCartOption(
      {this.pk,
      @JsonKey(name: product_field) required this.product,
      this.note,
      this.quantity = 1,
      this.is_free = false,
      @JsonKey(readValue: CartOption.genUniqueId) this.uid = '',
      @JsonKey(name: is_delete_field) this.is_delete = false,
      @JsonKey(ignore: true) this.is_new = false})
      : super._();

  factory _$DefaultCartOption.fromJson(Map<String, dynamic> json) =>
      _$$DefaultCartOptionFromJson(json);

  @override
  final int? pk;
  @override
  @JsonKey(name: product_field)
  final Product product;
  @override
  final String? note;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final bool is_free;
  @override
  @JsonKey(readValue: CartOption.genUniqueId)
  final String uid;
  @override
  @JsonKey(name: is_delete_field)
  final bool is_delete;
  @override
  @JsonKey(ignore: true)
  final bool is_new;

  @override
  String toString() {
    return 'CartOption(pk: $pk, product: $product, note: $note, quantity: $quantity, is_free: $is_free, uid: $uid, is_delete: $is_delete, is_new: $is_new)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultCartOption &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.is_free, is_free) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.is_delete, is_delete) &&
            const DeepCollectionEquality().equals(other.is_new, is_new));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(is_free),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(is_delete),
      const DeepCollectionEquality().hash(is_new));

  @JsonKey(ignore: true)
  @override
  _$$DefaultCartOptionCopyWith<_$DefaultCartOption> get copyWith =>
      __$$DefaultCartOptionCopyWithImpl<_$DefaultCartOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultCartOptionToJson(
      this,
    );
  }
}

abstract class DefaultCartOption extends CartOption {
  factory DefaultCartOption(
      {final int? pk,
      @JsonKey(name: product_field) required final Product product,
      final String? note,
      final int quantity,
      final bool is_free,
      @JsonKey(readValue: CartOption.genUniqueId) final String uid,
      @JsonKey(name: is_delete_field) final bool is_delete,
      @JsonKey(ignore: true) final bool is_new}) = _$DefaultCartOption;
  DefaultCartOption._() : super._();

  factory DefaultCartOption.fromJson(Map<String, dynamic> json) =
      _$DefaultCartOption.fromJson;

  @override
  int? get pk;
  @override
  @JsonKey(name: product_field)
  Product get product;
  @override
  String? get note;
  @override
  int get quantity;
  @override
  bool get is_free;
  @override
  @JsonKey(readValue: CartOption.genUniqueId)
  String get uid;
  @override
  @JsonKey(name: is_delete_field)
  bool get is_delete;
  @override
  @JsonKey(ignore: true)
  bool get is_new;
  @override
  @JsonKey(ignore: true)
  _$$DefaultCartOptionCopyWith<_$DefaultCartOption> get copyWith =>
      throw _privateConstructorUsedError;
}
