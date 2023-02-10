import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/features/home/widgets/customer_avatar.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
export 'customer_address_editing_page.dart';

class CustomerPage extends ConsumerWidget {
  final String conversation_id;

  const CustomerPage({required this.conversation_id, Key? key})
      : super(key: key);

  static RouteSetting<String> route(String conversation_id) {
    const path = 'customer';
    return RouteSetting(
      path,
      shouldBeAuth: true,
      params: conversation_id,
      toPathUrl: () {
        return '/$path/$conversation_id';
      },
    );
  }

  @override
  Widget build(context, ref) {
    const itemPadding = EdgeInsets.symmetric(
      vertical: 14.0,
      horizontal: 16,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Thông tin khách hàng')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: ref.watch(customer_provider(conversation_id)).when<Widget>(
              data: (data) {
                return Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              CustomerAvatar(
                                profile_pic: data.profile_pic,
                                source: ref
                                    .read(chatProvider(conversation_id))
                                    .params
                                    .source,
                              ),
                              const SizedBox(width: 12),
                              Text(data.name,
                                  style: context.textTheme.labelLarge),
                            ],
                          ),
                        ),
                        Padding(
                          padding: itemPadding,
                          child: Text(
                            'Thông tin cá nhân',
                            style: context.textTheme.labelMedium,
                          ),
                        ),
                        Padding(
                          padding: itemPadding,
                          child: CustomerInfoBox(onPressEdit: () {}, children: [
                            Text(
                              data.contact_information ?? data.name,
                              style: context.textTheme.labelMedium,
                            ),
                            if (data.phone_number != null)
                              Text(data.phone_number!),
                            if (data.recipient_information != null)
                              Text(data.recipient_information!)
                          ]),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: () => ref
                              .read(navigatorProvider)
                              .push($Route.order(conversation_id)),
                          child: Padding(
                              padding: itemPadding,
                              child: Text('Lịch sử đặt hàng',
                                  style: context.textTheme.labelMedium)),
                        ),
                        const Divider(),
                        MessengerNoteList(conversation_id),
                      ],
                    ));
              },
              error: (error, stackTrace) {
                return EmptyView.error(error: error);
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
        ),
      ),
    );
  }
}
