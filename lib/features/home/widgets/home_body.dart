import 'package:dabi_chat/features/comment/comment.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';
import 'package:tuple/tuple.dart';

import 'chat_list_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: $BottomTabBar(),
        body: TabBarView(
          children: [
            ChatListViewBody(),
            CommentPage(),
          ],
        ),
      ),
    );
  }
}

class $BottomTabBar extends StatefulWidget {
  const $BottomTabBar({Key? key}) : super(key: key);

  @override
  State<$BottomTabBar> createState() => _$BottomTabBarState();
}

class _$BottomTabBarState extends State<$BottomTabBar> {
  int index = 0;

  TabController get tabController => DefaultTabController.of(context)!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      tabController.addListener(onTabChanged);
    });
  }

  void onTabChanged() {
    if (tabController.indexIsChanging) return;
    setState(() {
      index = tabController.index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.removeListener(onTabChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final tab in enumerate(<Tuple2<String, IconData>>[
          const Tuple2('DM', Dabicons.send),
          const Tuple2('Bình luận', Dabicons.chat)
        ]))
          Builder(builder: (context) {
            final color =
                tab.index == index ? context.theme.primaryColor : Colors.black;
            return Expanded(
                child: InkWell(
              onTap: () {
                tabController.animateTo(tab.index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      tab.value.item2,
                      color: color,
                    ),
                    Text(
                      tab.value.item1,
                      style: context.theme.textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                        color: color,
                      ),
                    )
                  ],
                ),
              ),
            ));
          })
      ],
    );
  }
}
