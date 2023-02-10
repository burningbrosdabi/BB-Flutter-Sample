// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDraft _$OrderDraftFromJson(Map<String, dynamic> json) {
  return _OrderDraft.fromJson(json);
}

/// @nodoc
mixin _$OrderDraft {
  Recipient? get recipient =>
      throw _privateConstructorUsedError; // String? recipient_phone,
// String? recipient_name,
// String? recipient_address,
  int get shipping_fee => throw _privateConstructorUsedError;
  List<CartOption> get order_details => throw _privateConstructorUsedError;
  PaymentMethod get payment_method => throw _privateConstructorUsedError;
  int get cod_amount => throw _privateConstructorUsedError;
  int get bank_transfer_amount => throw _privateConstructorUsedError;
  String? get gift => throw _privateConstructorUsedError;
  Promo? get promotion => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDraftCopyWith<OrderDraft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDraftCopyWith<$Res> {
  factory $OrderDraftCopyWith(
          OrderDraft value, $Res Function(OrderDraft) then) =
      _$OrderDraftCopyWithImpl<$Res>;
  $Res call(
      {Recipient? recipient,
      int shipping_fee,
      List<CartOption> order_details,
      PaymentMethod payment_method,
      int cod_amount,
      int bank_transfer_amount,
      String? gift,
      Promo? promotion,
      String? note});

  $RecipientCopyWith<$Res>? get recipient;
  $PromoCopyWith<$Res>? get promotion;
}

/// @nodoc
class _$OrderDraftCopyWithImpl<$Res> implements $OrderDraftCopyWith<$Res> {
  _$OrderDraftCopyWithImpl(this._value, this._then);

  final OrderDraft _value;
  // ignore: unused_field
  final $Res Function(OrderDraft) _then;

  @override
  $Res call({
    Object? recipient = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int,
      order_details: order_details == freezed
          ? _value.order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      cod_amount: cod_amount == freezed
          ? _value.cod_amount
          : cod_amount // ignore: cast_nullable_to_non_nullable
              as int,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promo?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $RecipientCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value));
    });
  }

  @override
  $PromoCopyWith<$Res>? get promotion {
    if (_value.promotion == null) {
      return null;
    }

    return $PromoCopyWith<$Res>(_value.promotion!, (value) {
      return _then(_value.copyWith(promotion: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderDraftCopyWith<$Res>
    implements $OrderDraftCopyWith<$Res> {
  factory _$$_OrderDraftCopyWith(
          _$_OrderDraft value, $Res Function(_$_OrderDraft) then) =
      __$$_OrderDraftCopyWithImpl<$Res>;
  @override
  $Res call(
      {Recipient? recipient,
      int shipping_fee,
      List<CartOption> order_details,
      PaymentMethod payment_method,
      int cod_amount,
      int bank_transfer_amount,
      String? gift,
      Promo? promotion,
      String? note});

  @override
  $RecipientCopyWith<$Res>? get recipient;
  @override
  $PromoCopyWith<$Res>? get promotion;
}

/// @nodoc
class __$$_OrderDraftCopyWithImpl<$Res> extends _$OrderDraftCopyWithImpl<$Res>
    implements _$$_OrderDraftCopyWith<$Res> {
  __$$_OrderDraftCopyWithImpl(
      _$_OrderDraft _value, $Res Function(_$_OrderDraft) _then)
      : super(_value, (v) => _then(v as _$_OrderDraft));

  @override
  _$_OrderDraft get _value => super._value as _$_OrderDraft;

  @override
  $Res call({
    Object? recipient = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_OrderDraft(
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int,
      order_details: order_details == freezed
          ? _value._order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      cod_amount: cod_amount == freezed
          ? _value.cod_amount
          : cod_amount // ignore: cast_nullable_to_non_nullable
              as int,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as Promo?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_OrderDraft extends _OrderDraft {
  const _$_OrderDraft(
      {this.recipient,
      this.shipping_fee = 0,
      required final List<CartOption> order_details,
      this.payment_method = PaymentMethod.COD,
      this.cod_amount = 0,
      this.bank_transfer_amount = 0,
      this.gift,
      this.promotion,
      this.note})
      : _order_details = order_details,
        super._();

  factory _$_OrderDraft.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDraftFromJson(json);

  @override
  final Recipient? recipient;
// String? recipient_phone,
// String? recipient_name,
// String? recipient_address,
  @override
  @JsonKey()
  final int shipping_fee;
  final List<CartOption> _order_details;
  @override
  List<CartOption> get order_details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order_details);
  }

  @override
  @JsonKey()
  final PaymentMethod payment_method;
  @override
  @JsonKey()
  final int cod_amount;
  @override
  @JsonKey()
  final int bank_transfer_amount;
  @override
  final String? gift;
  @override
  final Promo? promotion;
  @override
  final String? note;

  @override
  String toString() {
    return 'OrderDraft(recipient: $recipient, shipping_fee: $shipping_fee, order_details: $order_details, payment_method: $payment_method, cod_amount: $cod_amount, bank_transfer_amount: $bank_transfer_amount, gift: $gift, promotion: $promotion, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDraft &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality()
                .equals(other.shipping_fee, shipping_fee) &&
            const DeepCollectionEquality()
                .equals(other._order_details, _order_details) &&
            const DeepCollectionEquality()
                .equals(other.payment_method, payment_method) &&
            const DeepCollectionEquality()
                .equals(other.cod_amount, cod_amount) &&
            const DeepCollectionEquality()
                .equals(other.bank_transfer_amount, bank_transfer_amount) &&
            const DeepCollectionEquality().equals(other.gift, gift) &&
            const DeepCollectionEquality().equals(other.promotion, promotion) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(shipping_fee),
      const DeepCollectionEquality().hash(_order_details),
      const DeepCollectionEquality().hash(payment_method),
      const DeepCollectionEquality().hash(cod_amount),
      const DeepCollectionEquality().hash(bank_transfer_amount),
      const DeepCollectionEquality().hash(gift),
      const DeepCollectionEquality().hash(promotion),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDraftCopyWith<_$_OrderDraft> get copyWith =>
      __$$_OrderDraftCopyWithImpl<_$_OrderDraft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDraftToJson(
      this,
    );
  }
}

abstract class _OrderDraft extends OrderDraft {
  const factory _OrderDraft(
      {final Recipient? recipient,
      final int shipping_fee,
      required final List<CartOption> order_details,
      final PaymentMethod payment_method,
      final int cod_amount,
      final int bank_transfer_amount,
      final String? gift,
      final Promo? promotion,
      final String? note}) = _$_OrderDraft;
  const _OrderDraft._() : super._();

  factory _OrderDraft.fromJson(Map<String, dynamic> json) =
      _$_OrderDraft.fromJson;

  @override
  Recipient? get recipient;
  @override // String? recipient_phone,
// String? recipient_name,
// String? recipient_address,
  int get shipping_fee;
  @override
  List<CartOption> get order_details;
  @override
  PaymentMethod get payment_method;
  @override
  int get cod_amount;
  @override
  int get bank_transfer_amount;
  @override
  String? get gift;
  @override
  Promo? get promotion;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDraftCopyWith<_$_OrderDraft> get copyWith =>
      throw _privateConstructorUsedError;
}
