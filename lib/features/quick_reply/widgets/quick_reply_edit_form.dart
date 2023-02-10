import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/empty/empty_view.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';
part 'quick_reply_edit_form.vm.dart';

class QuickReplyEditForm extends ConsumerStatefulWidget {
  final int reply;

  const QuickReplyEditForm({
    required this.reply,
    Key? key,
  }) : super(key: key);

  @override
  _QuickReplyEditFormState createState() => _QuickReplyEditFormState();
}

class _QuickReplyEditFormState extends ConsumerState<QuickReplyEditForm> {
  late ViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = ViewModel(rootContext: ref.read(quickReply).rootContext!);
  }

  @override
  Widget build(BuildContext context) {
    final reply = ref.watch(quick_reply_future).value?.firstWhere(
          (element) => widget.reply == element.id,
        );
    final text_button_style = TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(reply?.title ?? ''),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 12.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: ValueListenableBuilder<EditMode>(
                  builder: (context, value, child) {
                    return IndexedStack(
                      index: value.toInt(),
                      children: [
                        child!,
                        TextFormField(
                          minLines: null,
                          maxLines: null,
                          controller: viewModel.textEditingController,
                        ),
                      ],
                    );
                  },
                  valueListenable: viewModel.mode,
                  child: reply != null
                      ? TemplatePlacholder(
                          text: reply.text,
                          controller: viewModel.templateController,
                        )
                      : EmptyView.error(
                          error: Exception('Empty reply error'),
                        ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 28,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ValueListenableBuilder<EditMode>(
                          valueListenable: viewModel.mode,
                          builder: (context, value, child) {
                            if (value == EditMode.full_edit)
                              return TextButton(
                                  style: text_button_style,
                                  onPressed: () {
                                    viewModel.mode.value =
                                        EditMode.fill_in_placeholder;
                                  },
                                  child: const Text('Hủy'));
                            else {
                              return TextButton(
                                  style: text_button_style,
                                  onPressed: () {
                                    viewModel.onEdit();
                                  },
                                  child: const Text('Sửa'));
                            }
                          }),
                      TextButton(
                          style: text_button_style,
                          onPressed: viewModel.onSent,
                          child: Text('Gửi',
                              style: context.textTheme.labelMedium!.copyWith(
                                color: context.theme.primaryColor,
                              ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
