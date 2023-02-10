import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/quick_reply/quick_reply.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'provider.dart';

class QuickReplyProvider {
  final Ref ref;
  final PanelController panelController = PanelController();
  late ScrollController scrollController;

  BuildContext? rootContext;

  QuickReplyProvider({required this.ref});

  void open() => panelController.open();

  void hide() => panelController.hide();
}

final quickReply = Provider((ref) => QuickReplyProvider(ref: ref));

final quick_reply_future = FutureProvider<List<QuickReply>>(
    (ref) => QuickRepliesRepository(ref: ref).getQuickReplies());
