import 'package:badges/badges.dart';
import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/home/home.dart';
import 'package:dabi_chat/features/staff/staff.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/messaging/messaging.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart' hide RouteSettings;
import 'package:lottie/lottie.dart';

class HomePage extends ConsumerStatefulWidget {
  static String path = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  static RouteSetting route() {
    return RouteSetting('/');
  }
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(messagingProvider).init();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(user_provider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Tin nhắn'),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                color: Colors.grey,
                icon: ref.watch(working_status).maybeWhen(
                    data: (data) {
                      return Badge(
                        animationType: BadgeAnimationType.scale,
                        showBadge: true,
                        badgeColor: data.when(
                          active: () => Colors.greenAccent,
                          away: () => Colors.grey,
                        ),
                        position: BadgePosition.bottomEnd(bottom: 0, end: 0),
                        child: const Icon(Dabicons.my_line),
                      );
                    },
                    orElse: () => const Icon(Dabicons.my_line)),
                onPressed: () {
                  ref.read(navigatorProvider).push($Route.setting());
                },
              );
            }),
          ],
        ),
        body: (user == null || !user.is_verified)
            ? const Offstage()
            : ref.watch(working_status).when(data: (data) {
                return data.when(active: () {
                  return const HomeBody();
                }, away: () {
                  final name_text_span = TextSpan(
                      text: user.first_name,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.bold));
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Lottie.asset(
                          'assets/images/empty/working_status_away.json',
                        ),
                      ),
                      Text(
                        'Cảm ơn ${user.first_name}, vì đã làm việc chăm chỉ. ❤️',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 12),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyText2,
                                children: [
                                  const TextSpan(
                                      text:
                                          'Cùng enjoy cái moment này và quay lại làm việc một cách hăng say '),
                                  name_text_span,
                                  const TextSpan(text: ' nhé!'),
                                ]),
                          )),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(working_status.notifier)
                                .updateStatus(const WorkingStatus.active());
                          },
                          child: const Text('BẮT ĐẦU CA LÀM VIỆC'),
                        ),
                      )
                    ],
                  );
                });
              }, error: (Object error, StackTrace? stackTrace) {
                return EmptyView.error(error: error);
              }, loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }));
  }
}
