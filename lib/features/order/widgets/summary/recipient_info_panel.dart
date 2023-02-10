import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/customer/view/customer_form_page.dart';
import 'package:dabi_chat/utils/context.dart';
import 'package:dabi_chat/widget/theme/color.dart';

import 'package:flutter/material.dart';

class RecipientInfoPanel extends ConsumerWidget {
  final String order_id;

  const RecipientInfoPanel({required this.order_id, super.key});

  @override
  Widget build(context, ref) {
    final recipient = ref.watch(recipient_provider(order_id))!;
    return Container(
      padding: const EdgeInsets.only(right: 4, top: 12, left: 12, bottom: 4),
      decoration: BoxDecoration(border: Border.all(width: 1, color: fade_gray)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recipient.contact_information ?? '',
            style: context.textTheme.labelLarge,
          ),
          Text(
            recipient.phone_number ?? '',
            style: context.textTheme.labelLarge,
          ),
          Text(
            recipient.recipient_information ?? '',
            maxLines: 2,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: context.theme.primaryColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
                onPressed: () =>
                    Navigator.of(context).pushNamed(CustomerFormPage.route),
                child: const Text('Cập nhật')),
          )
        ],
      ),
    );
  }
}
