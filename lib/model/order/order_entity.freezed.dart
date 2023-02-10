// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: 'order_code')
  String get id => throw _privateConstructorUsedError;
  List<CartOption> get order_details => throw _privateConstructorUsedError;
  int get total_price => throw _privateConstructorUsedError;
  PaymentMethod get payment_method => throw _privateConstructorUsedError;
  int get shipping_fee => throw _privateConstructorUsedError;
  int get cod_amount => throw _privateConstructorUsedError;
  int get bank_transfer_amount => throw _privateConstructorUsedError;
  String? get gift => throw _privateConstructorUsedError;
  Promo? get promotion => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
  OrderStatusEnum get status => throw _privateConstructorUsedError;
  String? get phone_number => throw _privateConstructorUsedError;
  String? get contact_information => throw _privateConstructorUsedError;
  String? get recipient_precise_address => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
  int get customer_pk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'order_code')
          String id,
      List<CartOption> order_details,
      int total_price,
      PaymentMethod payment_method,
      int shipping_fee,
      int cod_amount,
      int bank_transfer_amount,
      String? gift,
      Promo? promotion,
      String? note,
      @DateTimeConverter()
          DateTime? created,
      @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
          OrderStatusEnum status,
      String? phone_number,
      String? contact_information,
      String? recipient_precise_address,
      @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
          int customer_pk});

  $PromoCopyWith<$Res>? get promotion;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? order_details = freezed,
    Object? total_price = freezed,
    Object? payment_method = freezed,
    Object? shipping_fee = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? created = freezed,
    Object? status = freezed,
    Object? phone_number = freezed,
    Object? contact_information = freezed,
    Object? recipient_precise_address = freezed,
    Object? customer_pk = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order_details: order_details == freezed
          ? _value.order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>,
      total_price: total_price == freezed
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_information: contact_information == freezed
          ? _value.contact_information
          : contact_information // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_precise_address: recipient_precise_address == freezed
          ? _value.recipient_precise_address
          : recipient_precise_address // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_pk: customer_pk == freezed
          ? _value.customer_pk
          : customer_pk // ignore: cast_nullable_to_non_nullable
              as int,
    ));
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
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'order_code')
          String id,
      List<CartOption> order_details,
      int total_price,
      PaymentMethod payment_method,
      int shipping_fee,
      int cod_amount,
      int bank_transfer_amount,
      String? gift,
      Promo? promotion,
      String? note,
      @DateTimeConverter()
          DateTime? created,
      @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
          OrderStatusEnum status,
      String? phone_number,
      String? contact_information,
      String? recipient_precise_address,
      @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
          int customer_pk});

  @override
  $PromoCopyWith<$Res>? get promotion;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? id = freezed,
    Object? order_details = freezed,
    Object? total_price = freezed,
    Object? payment_method = freezed,
    Object? shipping_fee = freezed,
    Object? cod_amount = freezed,
    Object? bank_transfer_amount = freezed,
    Object? gift = freezed,
    Object? promotion = freezed,
    Object? note = freezed,
    Object? created = freezed,
    Object? status = freezed,
    Object? phone_number = freezed,
    Object? contact_information = freezed,
    Object? recipient_precise_address = freezed,
    Object? customer_pk = freezed,
  }) {
    return _then(_$_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order_details: order_details == freezed
          ? _value._order_details
          : order_details // ignore: cast_nullable_to_non_nullable
              as List<CartOption>,
      total_price: total_price == freezed
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int,
      payment_method: payment_method == freezed
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shipping_fee: shipping_fee == freezed
          ? _value.shipping_fee
          : shipping_fee // ignore: cast_nullable_to_non_nullable
              as int,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum,
      phone_number: phone_number == freezed
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_information: contact_information == freezed
          ? _value.contact_information
          : contact_information // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient_precise_address: recipient_precise_address == freezed
          ? _value.recipient_precise_address
          : recipient_precise_address // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_pk: customer_pk == freezed
          ? _value.customer_pk
          : customer_pk // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, explicitToJson: true)
class _$_Order extends _Order {
  const _$_Order(
      {@JsonKey(name: 'order_code')
          required this.id,
      final List<CartOption> order_details = const [],
      required this.total_price,
      required this.payment_method,
      this.shipping_fee = 0,
      this.cod_amount = 0,
      this.bank_transfer_amount = 0,
      this.gift,
      this.promotion,
      this.note,
      @DateTimeConverter()
          this.created,
      @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
          this.status = OrderStatusEnum.WAIT_FOR_CONFIRM,
      this.phone_number,
      this.contact_information,
      this.recipient_precise_address,
      @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
          required this.customer_pk})
      : _order_details = order_details,
        super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: 'order_code')
  final String id;
  final List<CartOption> _order_details;
  @override
  @JsonKey()
  List<CartOption> get order_details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order_details);
  }

  @override
  final int total_price;
  @override
  final PaymentMethod payment_method;
  @override
  @JsonKey()
  final int shipping_fee;
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
  @DateTimeConverter()
  final DateTime? created;
  @override
  @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
  final OrderStatusEnum status;
  @override
  final String? phone_number;
  @override
  final String? contact_information;
  @override
  final String? recipient_precise_address;
  @override
  @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
  final int customer_pk;

  @override
  String toString() {
    return 'Order(id: $id, order_details: $order_details, total_price: $total_price, payment_method: $payment_method, shipping_fee: $shipping_fee, cod_amount: $cod_amount, bank_transfer_amount: $bank_transfer_amount, gift: $gift, promotion: $promotion, note: $note, created: $created, status: $status, phone_number: $phone_number, contact_information: $contact_information, recipient_precise_address: $recipient_precise_address, customer_pk: $customer_pk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._order_details, _order_details) &&
            const DeepCollectionEquality()
                .equals(other.total_price, total_price) &&
            const DeepCollectionEquality()
                .equals(other.payment_method, payment_method) &&
            const DeepCollectionEquality()
                .equals(other.shipping_fee, shipping_fee) &&
            const DeepCollectionEquality()
                .equals(other.cod_amount, cod_amount) &&
            const DeepCollectionEquality()
                .equals(other.bank_transfer_amount, bank_transfer_amount) &&
            const DeepCollectionEquality().equals(other.gift, gift) &&
            const DeepCollectionEquality().equals(other.promotion, promotion) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.phone_number, phone_number) &&
            const DeepCollectionEquality()
                .equals(other.contact_information, contact_information) &&
            const DeepCollectionEquality().equals(
                other.recipient_precise_address, recipient_precise_address) &&
            const DeepCollectionEquality()
                .equals(other.customer_pk, customer_pk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_order_details),
      const DeepCollectionEquality().hash(total_price),
      const DeepCollectionEquality().hash(payment_method),
      const DeepCollectionEquality().hash(shipping_fee),
      const DeepCollectionEquality().hash(cod_amount),
      const DeepCollectionEquality().hash(bank_transfer_amount),
      const DeepCollectionEquality().hash(gift),
      const DeepCollectionEquality().hash(promotion),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(phone_number),
      const DeepCollectionEquality().hash(contact_information),
      const DeepCollectionEquality().hash(recipient_precise_address),
      const DeepCollectionEquality().hash(customer_pk));

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {@JsonKey(name: 'order_code')
          required final String id,
      final List<CartOption> order_details,
      required final int total_price,
      required final PaymentMethod payment_method,
      final int shipping_fee,
      final int cod_amount,
      final int bank_transfer_amount,
      final String? gift,
      final Promo? promotion,
      final String? note,
      @DateTimeConverter()
          final DateTime? created,
      @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
          final OrderStatusEnum status,
      final String? phone_number,
      final String? contact_information,
      final String? recipient_precise_address,
      @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
          required final int customer_pk}) = _$_Order;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: 'order_code')
  String get id;
  @override
  List<CartOption> get order_details;
  @override
  int get total_price;
  @override
  PaymentMethod get payment_method;
  @override
  int get shipping_fee;
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
  @DateTimeConverter()
  DateTime? get created;
  @override
  @JsonKey(unknownEnumValue: OrderStatusEnum.WAIT_FOR_CONFIRM, name: 'status')
  OrderStatusEnum get status;
  @override
  String? get phone_number;
  @override
  String? get contact_information;
  @override
  String? get recipient_precise_address;
  @override
  @JsonKey(name: 'customer', readValue: Order.readCustomerPk)
  int get customer_pk;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
