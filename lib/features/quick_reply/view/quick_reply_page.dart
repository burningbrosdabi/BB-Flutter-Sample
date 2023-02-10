import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class QuickReplyPage extends ConsumerWidget {
  const QuickReplyPage({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    ref.watch(quickReply).rootContext = context;
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return CupertinoPageRoute(builder: (context) {
          if (settings.name == '/')
            return const QuickReplyView();
          else if (settings.name == '/edit') {
            return QuickReplyEditForm(
              reply: settings.arguments as int,
            );
          }
          return const Offstage();
        });
      },
    );
  }
}

class QuickReplyView extends ConsumerWidget {
  const QuickReplyView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final asyncValue = ref.watch(quick_reply_future);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Tin nhắn mẫu'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(modal_presentation).hide();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: asyncValue.when(
        data: (data) {
          return QuickReplyBody(data: data);
        },
        error: (Object error, StackTrace? stackTrace) {
          return EmptyView.error(error: error);
        },
        loading: () {
          return const Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
