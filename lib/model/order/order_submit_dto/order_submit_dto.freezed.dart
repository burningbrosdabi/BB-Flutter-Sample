// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_submit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderSubmitDto _$OrderSubmitDtoFromJson(Map<String, dynamic> json) {
  return _OrderSubmitDto.fromJson(json);
}

/// @nodoc
mixin _$OrderSubmitDto {
  int get customer => throw _privateConstructorUsedError;
  String? get recipient_phone => throw _privateConstructorUsedError;
  String? get recipient_name => throw _privateConstructorUsedError;
  String? get recipient_address => throw _privateConstructorUsedError;
  int get shipping_fee => throw _privateConstructorUsedError;
  @ListCartOptionConverter()
  List<CartOption> get order_details => throw _privateConstructorUsedError;
  PaymentMethod get payment_method => throw _privateConstructorUsedError;
  int? get cod_amount => throw _privateConstructorUsedError;
  int? get bank_transfer_amount => throw _privateConstructorUsedError;
  String? get gift => throw _privateConstructorUsedError;
  int? get promotion => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get recipient_ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSubmitDtoCopyWith<OrderSubmitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSubmitDtoCopyWith<$Res> {
  factory $OrderSubmitDtoCopyWith(
          OrderSubmitDto value, $Res Function(OrderSubmitDto) then) =
      _$OrderSubmitDtoCopyWithImpl<$Res>;
  $Res call(
      {int customer,
      String? recipient_phone,
      String? recipient_name,
      String? recipient_address,
      int shipping_fee,
      @ListCartOptionConverter() List<CartOption> order_details,
      PaymentMethod payment_method,
      int? cod_amount,
      int? bank_transfer_amount,
      String? gift,
      int? promotion,
      String? note,
      int? recipient_ward});
}

/// @nodoc
class _$OrderSubmitDtoCopyWithImpl<$Res>
    implements $OrderSubmitDtoCopyWith<$Res> {
  _$OrderSubmitDtoCopyWithImpl(this._value, this._then);

  final OrderSubmitDto _value;
  // ignore: unused_field
  final $Res Function(OrderSubmitDto) _then;

  @override
  $Res call({
    Object? customer = freezed,
    Object? recipient_phone = freezed,
    Object? recipient_name = freezed,
    Object? recipient_address = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? recipient_ward = freezed,
  }) {
    return _then(_value.copyWith(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int,
      recipient_phone: recipient_phone == freezed
          ? _value.recipient_phone
          : recipient_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_name: recipient_name == freezed
          ? _value.recipient_name
          : recipient_name // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_address: recipient_address == freezed
          ? _value.recipient_address
          : recipient_address // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_ward: recipient_ward == freezed
          ? _value.recipient_ward
          : recipient_ward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderSubmitDtoCopyWith<$Res>
    implements $OrderSubmitDtoCopyWith<$Res> {
  factory _$$_OrderSubmitDtoCopyWith(
          _$_OrderSubmitDto value, $Res Function(_$_OrderSubmitDto) then) =
      __$$_OrderSubmitDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int customer,
      String? recipient_phone,
      String? recipient_name,
      String? recipient_address,
      int shipping_fee,
      @ListCartOptionConverter() List<CartOption> order_details,
      PaymentMethod payment_method,
      int? cod_amount,
      int? bank_transfer_amount,
      String? gift,
      int? promotion,
      String? note,
      int? recipient_ward});
}

/// @nodoc
class __$$_OrderSubmitDtoCopyWithImpl<$Res>
    extends _$OrderSubmitDtoCopyWithImpl<$Res>
    implements _$$_OrderSubmitDtoCopyWith<$Res> {
  __$$_OrderSubmitDtoCopyWithImpl(
      _$_OrderSubmitDto _value, $Res Function(_$_OrderSubmitDto) _then)
      : super(_value, (v) => _then(v as _$_OrderSubmitDto));

  @override
  _$_OrderSubmitDto get _value => super._value as _$_OrderSubmitDto;

  @override
  $Res call({
    Object? customer = freezed,
    Object? recipient_phone = freezed,
    Object? recipient_name = freezed,
    Object? recipient_address = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? recipient_ward = freezed,
  }) {
    return _then(_$_OrderSubmitDto(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int,
      recipient_phone: recipient_phone == freezed
          ? _value.recipient_phone
          : recipient_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_name: recipient_name == freezed
          ? _value.recipient_name
          : recipient_name // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_address: recipient_address == freezed
          ? _value.recipient_address
          : recipient_address // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as int?,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_ward: recipient_ward == freezed
          ? _value.recipient_ward
          : recipient_ward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_OrderSubmitDto extends _OrderSubmitDto {
  _$_OrderSubmitDto(
      {required this.customer,
      this.recipient_phone,
      this.recipient_name,
      this.recipient_address,
      required this.shipping_fee,
      @ListCartOptionConverter() required final List<CartOption> order_details,
      required this.payment_method,
      this.cod_amount,
      this.bank_transfer_amount,
      this.gift,
      this.promotion,
      this.note,
      this.recipient_ward})
      : _order_details = order_details,
        super._();

  factory _$_OrderSubmitDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderSubmitDtoFromJson(json);

  @override
  final int customer;
  @override
  final String? recipient_phone;
  @override
  final String? recipient_name;
  @override
  final String? recipient_address;
  @override
  final int shipping_fee;
  final List<CartOption> _order_details;
  @override
  @ListCartOptionConverter()
  List<CartOption> get order_details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order_details);
  }

  @override
  final PaymentMethod payment_method;
  @override
  final int? cod_amount;
  @override
  final int? bank_transfer_amount;
  @override
  final String? gift;
  @override
  final int? promotion;
  @override
  final String? note;
  @override
  final int? recipient_ward;

  @override
  String toString() {
    return 'OrderSubmitDto(customer: $customer, recipient_phone: $recipient_phone, recipient_name: $recipient_name, recipient_address: $recipient_address, shipping_fee: $shipping_fee, order_details: $order_details, payment_method: $payment_method, cod_amount: $cod_amount, bank_transfer_amount: $bank_transfer_amount, gift: $gift, promotion: $promotion, note: $note, recipient_ward: $recipient_ward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSubmitDto &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality()
                .equals(other.recipient_phone, recipient_phone) &&
            const DeepCollectionEquality()
                .equals(other.recipient_name, recipient_name) &&
            const DeepCollectionEquality()
                .equals(other.recipient_address, recipient_address) &&
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
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.recipient_ward, recipient_ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(recipient_phone),
      const DeepCollectionEquality().hash(recipient_name),
      const DeepCollectionEquality().hash(recipient_address),
      const DeepCollectionEquality().hash(shipping_fee),
      const DeepCollectionEquality().hash(_order_details),
      const DeepCollectionEquality().hash(payment_method),
      const DeepCollectionEquality().hash(cod_amount),
      const DeepCollectionEquality().hash(bank_transfer_amount),
      const DeepCollectionEquality().hash(gift),
      const DeepCollectionEquality().hash(promotion),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(recipient_ward));

  @JsonKey(ignore: true)
  @override
  _$$_OrderSubmitDtoCopyWith<_$_OrderSubmitDto> get copyWith =>
      __$$_OrderSubmitDtoCopyWithImpl<_$_OrderSubmitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSubmitDtoToJson(
      this,
    );
  }
}

abstract class _OrderSubmitDto extends OrderSubmitDto {
  factory _OrderSubmitDto(
      {required final int customer,
      final String? recipient_phone,
      final String? recipient_name,
      final String? recipient_address,
      required final int shipping_fee,
      @ListCartOptionConverter() required final List<CartOption> order_details,
      required final PaymentMethod payment_method,
      final int? cod_amount,
      final int? bank_transfer_amount,
      final String? gift,
      final int? promotion,
      final String? note,
      final int? recipient_ward}) = _$_OrderSubmitDto;
  _OrderSubmitDto._() : super._();

  factory _OrderSubmitDto.fromJson(Map<String, dynamic> json) =
      _$_OrderSubmitDto.fromJson;

  @override
  int get customer;
  @override
  String? get recipient_phone;
  @override
  String? get recipient_name;
  @override
  String? get recipient_address;
  @override
  int get shipping_fee;
  @override
  @ListCartOptionConverter()
  List<CartOption> get order_details;
  @override
  PaymentMethod get payment_method;
  @override
  int? get cod_amount;
  @override
  int? get bank_transfer_amount;
  @override
  String? get gift;
  @override
  int? get promotion;
  @override
  String? get note;
  @override
  int? get recipient_ward;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSubmitDtoCopyWith<_$_OrderSubmitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPartialDto _$OrderPartialDtoFromJson(Map<String, dynamic> json) {
  return _OrderPartialDto.fromJson(json);
}

/// @nodoc
mixin _$OrderPartialDto {
  int? get customer => throw _privateConstructorUsedError;
  String? get recipient_phone => throw _privateConstructorUsedError;
  String? get recipient_name => throw _privateConstructorUsedError;
  String? get recipient_address => throw _privateConstructorUsedError;
  int? get shipping_fee => throw _privateConstructorUsedError;
  @ListCartOptionUpdateConverter()
  List<CartOption>? get order_details => throw _privateConstructorUsedError;
  PaymentMethod? get payment_method => throw _privateConstructorUsedError;
  int? get cod_amount => throw _privateConstructorUsedError;
  int? get bank_transfer_amount => throw _privateConstructorUsedError;
  String? get gift => throw _privateConstructorUsedError;
  int? get promotion => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get recipient_ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPartialDtoCopyWith<OrderPartialDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPartialDtoCopyWith<$Res> {
  factory $OrderPartialDtoCopyWith(
          OrderPartialDto value, $Res Function(OrderPartialDto) then) =
      _$OrderPartialDtoCopyWithImpl<$Res>;
  $Res call(
      {int? customer,
      String? recipient_phone,
      String? recipient_name,
      String? recipient_address,
      int? shipping_fee,
      @ListCartOptionUpdateConverter() List<CartOption>? order_details,
      PaymentMethod? payment_method,
      int? cod_amount,
      int? bank_transfer_amount,
      String? gift,
      int? promotion,
      String? note,
      int? recipient_ward});
}

/// @nodoc
class _$OrderPartialDtoCopyWithImpl<$Res>
    implements $OrderPartialDtoCopyWith<$Res> {
  _$OrderPartialDtoCopyWithImpl(this._value, this._then);

  final OrderPartialDto _value;
  // ignore: unused_field
  final $Res Function(OrderPartialDto) _then;

  @override
  $Res call({
    Object? customer = freezed,
    Object? recipient_phone = freezed,
    Object? recipient_name = freezed,
    Object? recipient_address = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? recipient_ward = freezed,
  }) {
    return _then(_value.copyWith(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int?,
      recipient_phone: recipient_phone == freezed
          ? _value.recipient_phone
          : recipient_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_name: recipient_name == freezed
          ? _value.recipient_name
          : recipient_name // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_address: recipient_address == freezed
          ? _value.recipient_address
          : recipient_address // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      order_details: order_details == freezed
          ? _value.order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>?,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      cod_amount: cod_amount == freezed
          ? _value.cod_amount
          : cod_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_ward: recipient_ward == freezed
          ? _value.recipient_ward
          : recipient_ward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderPartialDtoCopyWith<$Res>
    implements $OrderPartialDtoCopyWith<$Res> {
  factory _$$_OrderPartialDtoCopyWith(
          _$_OrderPartialDto value, $Res Function(_$_OrderPartialDto) then) =
      __$$_OrderPartialDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? customer,
      String? recipient_phone,
      String? recipient_name,
      String? recipient_address,
      int? shipping_fee,
      @ListCartOptionUpdateConverter() List<CartOption>? order_details,
      PaymentMethod? payment_method,
      int? cod_amount,
      int? bank_transfer_amount,
      String? gift,
      int? promotion,
      String? note,
      int? recipient_ward});
}

/// @nodoc
class __$$_OrderPartialDtoCopyWithImpl<$Res>
    extends _$OrderPartialDtoCopyWithImpl<$Res>
    implements _$$_OrderPartialDtoCopyWith<$Res> {
  __$$_OrderPartialDtoCopyWithImpl(
      _$_OrderPartialDto _value, $Res Function(_$_OrderPartialDto) _then)
      : super(_value, (v) => _then(v as _$_OrderPartialDto));

  @override
  _$_OrderPartialDto get _value => super._value as _$_OrderPartialDto;

  @override
  $Res call({
    Object? customer = freezed,
    Object? recipient_phone = freezed,
    Object? recipient_name = freezed,
    Object? recipient_address = freezed,
    Object? shipping_fee = freezed,
    Object? order_details = freezed,
    Object? payment_method = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? recipient_ward = freezed,
  }) {
    return _then(_$_OrderPartialDto(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int?,
      recipient_phone: recipient_phone == freezed
          ? _value.recipient_phone
          : recipient_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_name: recipient_name == freezed
          ? _value.recipient_name
          : recipient_name // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_address: recipient_address == freezed
          ? _value.recipient_address
          : recipient_address // ignore: cast_nullable_to_non_nullable
              as String?,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      order_details: order_details == freezed
          ? _value._order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>?,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      cod_amount: cod_amount == freezed
          ? _value.cod_amount
          : cod_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bank_transfer_amount: bank_transfer_amount == freezed
          ? _value.bank_transfer_amount
          : bank_transfer_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: gift == freezed
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as String?,
      promotion: promotion == freezed
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as int?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_ward: recipient_ward == freezed
          ? _value.recipient_ward
          : recipient_ward // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_OrderPartialDto extends _OrderPartialDto {
  const _$_OrderPartialDto(
      {this.customer,
      this.recipient_phone,
      this.recipient_name,
      this.recipient_address,
      this.shipping_fee,
      @ListCartOptionUpdateConverter() final List<CartOption>? order_details,
      this.payment_method,
      this.cod_amount,
      this.bank_transfer_amount,
      this.gift,
      this.promotion,
      this.note,
      this.recipient_ward})
      : _order_details = order_details,
        super._();

  factory _$_OrderPartialDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPartialDtoFromJson(json);

  @override
  final int? customer;
  @override
  final String? recipient_phone;
  @override
  final String? recipient_name;
  @override
  final String? recipient_address;
  @override
  final int? shipping_fee;
  final List<CartOption>? _order_details;
  @override
  @ListCartOptionUpdateConverter()
  List<CartOption>? get order_details {
    final value = _order_details;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaymentMethod? payment_method;
  @override
  final int? cod_amount;
  @override
  final int? bank_transfer_amount;
  @override
  final String? gift;
  @override
  final int? promotion;
  @override
  final String? note;
  @override
  final int? recipient_ward;

  @override
  String toString() {
    return 'OrderPartialDto(customer: $customer, recipient_phone: $recipient_phone, recipient_name: $recipient_name, recipient_address: $recipient_address, shipping_fee: $shipping_fee, order_details: $order_details, payment_method: $payment_method, cod_amount: $cod_amount, bank_transfer_amount: $bank_transfer_amount, gift: $gift, promotion: $promotion, note: $note, recipient_ward: $recipient_ward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPartialDto &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality()
                .equals(other.recipient_phone, recipient_phone) &&
            const DeepCollectionEquality()
                .equals(other.recipient_name, recipient_name) &&
            const DeepCollectionEquality()
                .equals(other.recipient_address, recipient_address) &&
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
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.recipient_ward, recipient_ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customer),
      const DeepCollectionEquality().hash(recipient_phone),
      const DeepCollectionEquality().hash(recipient_name),
      const DeepCollectionEquality().hash(recipient_address),
      const DeepCollectionEquality().hash(shipping_fee),
      const DeepCollectionEquality().hash(_order_details),
      const DeepCollectionEquality().hash(payment_method),
      const DeepCollectionEquality().hash(cod_amount),
      const DeepCollectionEquality().hash(bank_transfer_amount),
      const DeepCollectionEquality().hash(gift),
      const DeepCollectionEquality().hash(promotion),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(recipient_ward));

  @JsonKey(ignore: true)
  @override
  _$$_OrderPartialDtoCopyWith<_$_OrderPartialDto> get copyWith =>
      __$$_OrderPartialDtoCopyWithImpl<_$_OrderPartialDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPartialDtoToJson(
      this,
    );
  }
}

abstract class _OrderPartialDto extends OrderPartialDto {
  const factory _OrderPartialDto(
      {final int? customer,
      final String? recipient_phone,
      final String? recipient_name,
      final String? recipient_address,
      final int? shipping_fee,
      @ListCartOptionUpdateConverter() final List<CartOption>? order_details,
      final PaymentMethod? payment_method,
      final int? cod_amount,
      final int? bank_transfer_amount,
      final String? gift,
      final int? promotion,
      final String? note,
      final int? recipient_ward}) = _$_OrderPartialDto;
  const _OrderPartialDto._() : super._();

  factory _OrderPartialDto.fromJson(Map<String, dynamic> json) =
      _$_OrderPartialDto.fromJson;

  @override
  int? get customer;
  @override
  String? get recipient_phone;
  @override
  String? get recipient_name;
  @override
  String? get recipient_address;
  @override
  int? get shipping_fee;
  @override
  @ListCartOptionUpdateConverter()
  List<CartOption>? get order_details;
  @override
  PaymentMethod? get payment_method;
  @override
  int? get cod_amount;
  @override
  int? get bank_transfer_amount;
  @override
  String? get gift;
  @override
  int? get promotion;
  @override
  String? get note;
  @override
  int? get recipient_ward;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPartialDtoCopyWith<_$_OrderPartialDto> get copyWith =>
      throw _privateConstructorUsedError;
}
