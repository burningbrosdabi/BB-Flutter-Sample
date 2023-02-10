import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:quiver/core.dart';
import 'package:quiver/strings.dart';
import 'package:rxdart/rxdart.dart';

class CustomerFormPage extends ConsumerStatefulWidget {
  final String order_id;

  const CustomerFormPage({required this.order_id, super.key});

  static String route = '/info';

  @override
  ConsumerState<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends ConsumerState<CustomerFormPage> {
  late final _ViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = _ViewModel(
      ref: ref,
      order_id: widget.order_id,
    );
  }

  final _formKey = GlobalKey<FormState>();

  Future<void> update() async {
    if (_formKey.currentState!.validate()) {
      try {
        vm.update();
        Navigator.pop(context);
      } catch (error) {
        showDialog(
            context: context,
            builder: (context) => ExceptionDialog(
                  exception: $Exception.parse(error: error),
                ));
      }
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    vm.dispose();
  }

  @override
  Widget build(context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 48,
              title: const Text('Thông tin khách hàng'),
              actions: [
                IconButton(
                    onPressed: () {
                      ref.read(modal_presentation).hide();
                    },
                    icon: const Icon(Dabicons.close))
              ],
            ),
            body: ValueListenableBuilder<AsyncValue>(
              valueListenable: vm.update_customer,
              builder: (context, value, child) {
                return AbsorbPointer(
                  absorbing:
                      value.maybeWhen(orElse: () => false, loading: () => true),
                  child: child,
                );
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 12),
                child: Form(
                  key: _formKey,
                  child: CustomerForm(
                      order_id: widget.order_id,
                      address_input_controller: vm.address_input_controller,
                      phone_input_controller: vm.phone_input_controller,
                      name_input_controller: vm.name_input_controller,
                      ward_value: vm.ward_value),
                ),
              ),
            ),
            bottomNavigationBar: ValueListenableBuilder<AsyncValue>(
                valueListenable: vm.update_customer,
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: ElevatedButton(
                      onPressed: value.maybeWhen<void Function()?>(
                        orElse: () => () {
                          update();
                        },
                        loading: () => null,
                      ),
                      child: value.maybeWhen(
                        orElse: () => const Text('TIẾP TỤC'),
                        loading: () => const Spinner(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}

class _ViewModel {
  final WidgetRef ref;
  final String order_id;

  late final TextEditingController name_input_controller;
  late final TextEditingController phone_input_controller;
  late final TextEditingController address_input_controller;
  final ward_value = ValueNotifier<int?>(null);
  late Recipient? recipient;

  final _name_input_stream = PublishSubject<String>();
  final _phone_input_stream = PublishSubject<String>();
  final _address_input_stream = PublishSubject<String>();

  _ViewModel({required this.ref, required this.order_id}) {
    recipient = ref.read(recipient_provider(order_id));
    if (recipient == null || recipient!.missingRecipientInfo) {
      final draft_recipient = ref.read(drafting_recipient(order_id));
      if (draft_recipient != null) recipient = draft_recipient;
    }

    name_input_controller =
        TextEditingController(text: recipient?.contact_information ?? '')
          ..addListener(onNameChanged);
    phone_input_controller =
        TextEditingController(text: recipient?.phone_number ?? '')
          ..addListener(onPhoneChanged);
    address_input_controller =
        TextEditingController(text: recipient?.recipient_information ?? '')
          ..addListener(onAddressChanged);

    configStream(_name_input_stream).listen((value) {
      var recipient = _getDraftRecipient();
      recipient = recipient.copyWith(
        contact_information: value,
      );
      ref.read(drafting_recipient(order_id).notifier).state = recipient;
    });

    configStream(_phone_input_stream).listen((value) {
      var recipient = _getDraftRecipient();
      recipient = recipient.copyWith(
        phone_number: value,
      );
      ref.read(drafting_recipient(order_id).notifier).state = recipient;
    });

    configStream(_address_input_stream).listen((value) {
      var recipient = _getDraftRecipient();
      recipient = recipient.copyWith(
        recipient_information: value,
      );
      ref.read(drafting_recipient(order_id).notifier).state = recipient;
    });

    ward_value.value = null;
  }

  Stream<String?> configStream(PublishSubject<String> subject) {
    return subject
        .map((text) {
          return _nullIfBlank(text);
        })
        .skip(1)
        .debounceTime(const Duration(milliseconds: 200));
  }

  final ValueNotifier<AsyncValue<void>> update_customer =
      ValueNotifier(const AsyncValue.data(null));

  bool isPristine() {
    final recipient = ref.read(recipient_provider(order_id));
    return Optional.fromNullable(recipient?.contact_information).or('') ==
            name_input_controller.text &&
        Optional.fromNullable(recipient?.phone_number).or('') ==
            phone_input_controller.text &&
        Optional.fromNullable(recipient?.recipient_information).or('') ==
            address_input_controller.text;
  }

  void update() async {
    final recipient = ref.read(recipient_provider(order_id));

    if (recipient == null) return;

    var updated = recipient.copyWith();

    if (isNotBlank(name_input_controller.text))
      updated = updated.copyWith(
        contact_information: name_input_controller.text,
      );
    if (isNotBlank(phone_input_controller.text))
      updated = updated.copyWith(
        phone_number: phone_input_controller.text,
      );
    if (isNotBlank(address_input_controller.text))
      updated = updated.copyWith(
        recipient_information: address_input_controller.text,
      );

    ref.read(recipient_provider(order_id).notifier).state = updated;
    ref.read(drafting_recipient(order_id).notifier).state = null;
    // update_customer.value = await AsyncValue.guard(
    //   () async {
    //     return ref
    //         .read(customer_provider(order_id).notifier)
    //         .update(updated);
    //   },
    // )
    //   ..maybeWhen(
    //       orElse: () => {},
    //       error: (error, stack) {
    //         throw error;
    //       },
    //       loading: () {
    //         update_customer.value = const AsyncValue.loading();
    //       });
  }

  Recipient _getDraftRecipient() {
    if (ref.read(drafting_recipient(order_id)) == null) {
      ref.read(drafting_recipient(order_id).notifier).state =
          const Recipient(pk: 0);
    }
    return ref.read(drafting_recipient(order_id))!;
  }

  String? _nullIfBlank(String text) {
    return isBlank(text) ? null : text;
  }

  void onNameChanged() {
    _name_input_stream.add(name_input_controller.text);
  }

  void onPhoneChanged() {
    _phone_input_stream.add(phone_input_controller.text);
  }

  void onAddressChanged() {
    _address_input_stream.add(address_input_controller.text);
  }

  void dispose() {
    name_input_controller.removeListener(onNameChanged);
    phone_input_controller.removeListener(onPhoneChanged);
    address_input_controller.removeListener(onAddressChanged);

    _address_input_stream.close();
    _phone_input_stream.close();
    _name_input_stream.close();
  }
}
