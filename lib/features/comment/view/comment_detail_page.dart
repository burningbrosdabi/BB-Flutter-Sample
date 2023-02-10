import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/chat/chat.dart';
import 'package:dabi_chat/features/comment/view/comment_detail_page.vm.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/widgets.dart';

class CommentDetailPage extends ConsumerStatefulWidget {
  const CommentDetailPage({Key? key, required this.comment_id})
      : super(key: key);
  final String comment_id;

  static RouteSetting<String> route(String comment_id) {
    return RouteSetting(
      '/comment/$comment_id',
      shouldBeAuth: true,
      params: comment_id,
      toPathUrl: () {
        return '/comment/$comment_id';
      },
    );
  }

  @override
  ConsumerState<CommentDetailPage> createState() => _CommentDetailPageState();
}

class _CommentDetailPageState extends ConsumerState<CommentDetailPage> {
  late CommentDetailPageViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel =
        CommentDetailPageViewModel(ref: ref, comment_id: widget.comment_id)
          ..getComment();
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.dispose();
  }

  void sendMessages() {
    if (viewModel.commentValue.value.asData!.value.private_replied_text !=
        null) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
          const SnackBar(content: Text('Bình luận đã được phản hồi')));
      return;
    }
    viewModel.sendMessage();
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: ValueListenableBuilder<AsyncValue<Comment>>(
            valueListenable: viewModel.commentValue,
            builder: (context, value, child) {
              return value.maybeWhen(
                  data: (data) => Text(data.username),
                  orElse: () => const Text(''));
            },
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: ValueListenableBuilder<AsyncValue<Comment>>(
              valueListenable: viewModel.commentValue,
              builder: (context, value, child) {
                return value.maybeWhen(
                    data: (data) => Padding(
                          padding: const EdgeInsets.only(
                              right: 16.0, left: 16.0, bottom: 10.0),
                          child: GestureDetector(
                            onTap: () => launchUrlString(data.feed_url!),
                            child: Text(
                              data.feed_url ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodyMedium!.copyWith(
                                color: primary_color,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                    orElse: () => const Text(''));
              },
            ),
          ),
        ),
        body: StreamBuilder<List<types.Message>>(
          stream: viewModel.messageStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return EmptyView.error(
                  error: $Exception.parse(error: snapshot.error!));
            }
            if (snapshot.hasData) {
              final staff_id = '${ref.watch(user_provider)!.pk}';
              return Chat(
                customBottomWidget: ReplyInput(
                  controller: viewModel.controller,
                  onSubmit: sendMessages,
                ),
                usePreviewData: true,
                bubbleBuilder: (child,
                    {required types.Message message,
                    required bool nextMessageInGroup}) {
                  return ChatBubble(
                    child: child,
                    conversation_id: '-',
                    message: message,
                    nextMessageInGroup: nextMessageInGroup,
                    isMine: message.author.id == staff_id,
                  );
                },
                theme: themeBuilder(context),
                showUserNames: true,
                messages: snapshot.data!,
                onSendPressed: (_) {},
                user: types.User(id: staff_id),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
