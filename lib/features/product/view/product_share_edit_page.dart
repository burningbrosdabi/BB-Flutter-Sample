import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/product/provider/product_list_provider.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/services/navigation/navigator.dart';
import 'package:flutter/material.dart';

class ProductShareEditPage extends ConsumerWidget {
  static RouteSetting<String> route(String conversation_id) {
    return RouteSetting<String>(
      '/products/$conversation_id/edit',
      shouldBeAuth: true,
      toPathUrl: () {
        return '/products/$conversation_id/edit';
      },
    );
  }

  final String conversation_id;

  const ProductShareEditPage({required this.conversation_id, super.key});

  @override
  Widget build(context, ref) {
    final TextEditingController text_editing_controller =
        TextEditingController(text: ref.watch(selected_product)?.text);
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(selected_product)?.short_name ?? ''),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: TextFormField(
                autofocus: true,
                controller: text_editing_controller,
                minLines: 1,
                maxLines: null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                child: const Text('GỬI'),
                onPressed: () {
                  final product = ref.read(selected_product);
                  if (product == null) return;
                  ref.read(postmanProvider(conversation_id))
                    ..sendAttachmentMessage(urls: [product.photo])
                    ..sendTextMessage(
                      message: text_editing_controller.text,
                    );
                  ref
                      .read(navigatorProvider)
                      .pop(options: PopOptions(count: 2));
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
