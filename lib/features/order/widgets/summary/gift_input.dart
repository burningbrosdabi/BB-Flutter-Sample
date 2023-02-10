import 'package:flutter/material.dart';
import '../../provider/provider.dart';

class GiftInput extends ConsumerStatefulWidget {
  const GiftInput({super.key, required this.order_id});
  final String order_id;

  @override
  ConsumerState<GiftInput> createState() => _GiftInputState();
}

class _GiftInputState extends ConsumerState<GiftInput> {
  late final _ViewModel _vm;
  String get order_id => widget.order_id;

  @override
  void initState() {
    super.initState();
    _vm = _ViewModel(ref: ref, order_id: order_id);
  }

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      focusNode: _vm.focus_node,
      textEditingController: _vm.text_editing_controller,
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextFormField(
            focusNode: focusNode,
            controller: textEditingController,
            onFieldSubmitted: (text) {
              _vm.submit(text);
            });
      },
      optionsBuilder: (TextEditingValue textEditingValue) {
        return _vm.cache_gift_notifier.value
            .maybeWhen(data: (data) => data, orElse: () => []);
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<String> onSelected, Iterable<String> options) {
        return SizedBox.shrink(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: options
                .map(
                  (option) => Material(
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 12,
                      ),
                      onTap: () {
                        ref.read(gift_text(widget.order_id).notifier).state =
                            option;
                        onSelected(option);
                      },
                      dense: true,
                      title: Text(option),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

class _ViewModel {
  final FocusNode focus_node = FocusNode();
  late final TextEditingController text_editing_controller;
  final String order_id;

  final WidgetRef ref;
  final ValueNotifier<AsyncValue<List<String>>> cache_gift_notifier =
      ValueNotifier(
    const AsyncValue.loading(),
  );

  _ViewModel({required this.ref, required this.order_id}) {
    fetchCache();
    text_editing_controller =
        TextEditingController(text: ref.read(gift_text(order_id)));
    text_editing_controller.addListener(onTextChanged);
  }

  void fetchCache() async {
    cache_gift_notifier.value = await AsyncValue.guard<List<String>>(() async {
      final data = await ref.read(gift_repo).get();
      if (data == null) return [];
      return data;
    });
  }

  void submit(String text) {
    ref.read(gift_repo).push(text);
  }

  void onTextChanged() {
    ref.read(gift_text(order_id).notifier).state = text_editing_controller.text;
  }
}
