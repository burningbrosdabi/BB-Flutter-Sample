import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomerForm extends ConsumerWidget {
  final TextEditingController name_input_controller;
  final TextEditingController phone_input_controller;
  final TextEditingController address_input_controller;
  final ValueNotifier ward_value;
  final String order_id;

  const CustomerForm({
    required this.name_input_controller,
    required this.phone_input_controller,
    required this.address_input_controller,
    required this.order_id,
    required this.ward_value,
    super.key,
  });

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Bạn điền thiếu thông tin nè ';
    }
    return null;
  }

  @override
  Widget build(context, ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [
        InputLabel(
          label: 'Họ và tên',
          child: TextFormField(
            validator: validator,
            controller: name_input_controller,
            decoration: const InputDecoration(hintText: 'Tên'),
          ),
        ),
        const SizedBox(height: 8),
        InputLabel(
          label: 'Số điện thoại',
          child: TextFormField(
            validator: validator,
            inputFormatters: [
              LengthLimitingTextInputFormatter(12),
              PhoneInputFormatter()
            ],
            controller: phone_input_controller,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(hintText: '012 345 6789'),
          ),
        ),
        const SizedBox(height: 8),
        InputLabel(
          label: 'Địa chỉ',
          child: TextFormField(
            onTap: () async {
              final recipient = await Navigator.of(context).pushNamed(
                  CustomerAddressEditingPage.route,
                  arguments: order_id);

              if (recipient == null) return;
              address_input_controller.text =
                  (recipient as Recipient).recipient_information!;
            },
            readOnly: true,
            validator: validator,
            controller: address_input_controller,
            decoration: const InputDecoration(
                hintText: 'Số nhà, phường/xã, quận/huyện, tỉnh/thành'),
          ),
        ),
      ]),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.replaceAll(RegExp(r' '), ""),
      selection: newValue.selection,
    );
  }
}
