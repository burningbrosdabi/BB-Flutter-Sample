import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/features/splash/provider/provider.dart';
import 'package:dabi_chat/widget/button/button.dart';
import 'package:dabi_chat/widget/empty/empty_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashBody extends ConsumerWidget {
  final Widget child;
  const SplashBody({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> db = ref.watch(initializationFuture);
    return Container(
        color: Colors.white,
        child: db.when(
            data: (_) {
              return child;
            },
            error: (error, stack) {
              final exception = $Exception.parse(error: error);
              return Material(
                  child: EmptyView(
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      ref.refresh(initializationFuture);
                    },
                    child: const Text('THỬ LẠI'),
                  ),
                  ReportButton(
                    builder: (onPressed) {
                      return TextButton(
                        child: const Text('BÁO CÁO'),
                        onPressed: onPressed,
                      );
                    },
                  ),
                ],
                asset_panel: Lottie.asset(
                  'assets/images/empty/404.json',
                ),
                description: exception.meaning.description ?? '',
                title: exception.meaning.title,
              ));
            },
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
