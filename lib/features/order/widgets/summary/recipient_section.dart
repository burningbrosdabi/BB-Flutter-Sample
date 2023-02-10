import 'package:dabi_chat/features/customer/provider/customer_provider.dart';
import 'package:dabi_chat/features/customer/view/customer_form_page.dart';
import 'package:dabi_chat/features/order/widgets/summary/recipient_info_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'chevron_right_line.dart';
import 'summary_section_title.dart';

class RecipientSection extends ConsumerWidget {
  const RecipientSection({Key? key, required this.order_id}) : super(key: key);
  final String order_id;

  @override
  Widget build(context, ref) {
    const title = SummarySectionTitle(title: 'Thông tin người nhận');
    final data = ref.watch(recipient_provider(order_id));
    if (data?.missingRecipientInfo ?? true)
      return InkWell(
        onTap: () => Navigator.pushNamed(context, CustomerFormPage.route),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            title,
            ChevronRightLine(text: 'Thêm thông tin người nhận')
          ],
        ),
      );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        title,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RecipientInfoPanel(order_id: order_id),
        ),
      ],
    );
  }
}
