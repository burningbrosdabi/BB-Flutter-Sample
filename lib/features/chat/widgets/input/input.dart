import 'dart:async';

import 'package:dabi_chat/features/chat/provider/provider.dart';
import 'package:dabi_chat/features/chat/widgets/input/animated_actions.dart';
import 'package:dabi_chat/features/gallery/gallery.dart';
import 'package:dabi_chat/features/order/model/model.dart';
import 'package:dabi_chat/features/order/view/order_page.dart';
import 'package:dabi_chat/features/product/product.dart';
import 'package:dabi_chat/features/quick_reply/quick_reply.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/chat/messenger/types.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../../../customer/provider/customer_provider.dart';
import '../../../order/provider/order_provider.dart';

part 'input.vm.dart';

class ChatInput extends StatelessWidget {
  final String conversation_id;

  const ChatInput({required this.conversation_id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatInputBody(
      conversation_id: conversation_id,
    );
  }
}

class ChatInputBody extends ConsumerStatefulWidget {
  final String conversation_id;

  const ChatInputBody({required this.conversation_id, Key? key})
      : super(key: key);

  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends ConsumerState<ChatInputBody>
    with TickerProviderStateMixin {
  late ViewModel vm;
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
    vm = ViewModel(
      ref: ref,
      conversation_id: widget.conversation_id,
    )..animation.registeredAnimation(this);

    keyboardSubscription =
        KeyboardVisibilityController().onChange.listen((bool visible) {
      if (!visible && vm.focusNode.hasFocus)
        FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  @override
  void deactivate() {
    super.deactivate();
    keyboardSubscription.cancel();
    vm.deactivate();
  }

  Future<void> showOrderModal(Customer customer) async {
    final args = OrderArgs(
      order_id: widget.conversation_id,
      conversation_id: widget.conversation_id,
    );
    var draft = await ref.read(order_manager(args)).getDraft();
    if (draft == null) {
      draft = OrderDraft(
          recipient: Recipient.fromCustomer(customer), order_details: []);
      await ref.read(order_manager(args)).preSaveDraft(draft);
    }

    ref.read(modal_presentation).show(
        enableDrag: false,
        context: context,
        builder: (context) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            clipBehavior: Clip.hardEdge,
            child: OrderPage(mode: Mode.add, args: args),
          );
        });
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        color: context.theme.backgroundColor,
        child: Row(
          children: [
            const SizedBox(width: 12),
            AnimatedActions(
              animation: vm.animation.actionsAnim,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  $IconButton(
                    onPressed: () {
                      vm.onShowProducts(context);
                    },
                    icon: Dabicons.tag_line,
                  ),
                  $IconButton(
                    onPressed: () async {
                      showModal(
                        context: context,
                        builder: (_) => Theme(
                          data: context.theme.copyWith(
                            listTileTheme: context.theme.listTileTheme.copyWith(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pop();
                                  vm.onAttachmentPressed(
                                    context: context,
                                    conversation_id: widget.conversation_id,
                                  );
                                },
                                title: const Text('Ảnh từ thư viện'),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pop();
                                  vm.onUploadPressed(
                                    context: context,
                                    conversation_id: widget.conversation_id,
                                  );
                                },
                                title: const Text('Ảnh tải lên từ máy'),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    icon: Dabicons.gallery,
                  ),
                  $IconButton(
                    onPressed: () => vm.onShowQuickReplyModal(
                      context,
                      widget.conversation_id,
                    ),
                    icon: Dabicons.chat,
                  ),
                  ref.watch(customer_provider(widget.conversation_id)).when(
                        data: (customer) => $IconButton(
                          onPressed: () => showOrderModal(customer),
                          icon: Dabicons.cart_line_1,
                        ),
                        error: (error, trace) => const Offstage(),
                        loading: () => const Offstage(),
                      )
                ],
              ),
            ),
            AnimatedActions(
              animation: vm.animation.reversedActionAnim,
              child: $IconButton(
                onPressed: vm.onExpandActions,
                icon: Dabicons.arrow_left,
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: fade_gray, borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextFormField(
                          onChanged: vm.onTextChanged,
                          focusNode: vm.focusNode,
                          controller: vm.inputController,
                          textInputAction: TextInputAction.newline,
                          maxLines: 5,
                          minLines: 1,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    AnimatedBuilder(
                        animation: vm.inputController,
                        child: IconButton(
                            onPressed: () {
                              vm.onSentPressed(
                                  conversation_id: widget.conversation_id);
                            },
                            icon: const Icon(Dabicons.send)),
                        builder: (context, child) {
                          final disabled =
                              vm.inputController.text.trim().isEmpty;
                          return AnimatedOpacity(
                            duration: const Duration(milliseconds: 220),
                            opacity: disabled ? 0.3 : 1,
                            child: AbsorbPointer(
                                absorbing: disabled, child: child),
                          );
                        }),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class $IconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const $IconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 36,
      child: IconButton(
        iconSize: 24,
        padding: const EdgeInsets.all(6),
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
