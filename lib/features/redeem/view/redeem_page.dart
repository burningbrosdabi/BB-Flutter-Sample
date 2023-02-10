import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/loader/loader.dart';
import 'package:flutter/material.dart';

import '../provider/provider.dart';

class RedeemPage extends ConsumerStatefulWidget {
  const RedeemPage({Key? key}) : super(key: key);

  static RouteSetting route() {
    return RouteSetting(
      '/redeem',
      shouldBeAuth: true,
    );
  }

  @override
  ConsumerState<RedeemPage> createState() => _RedeemPageState();
}

class _RedeemPageState extends ConsumerState<RedeemPage> {
  late final _ViewModel vm;
  late final bool could_back;

  @override
  void initState() {
    super.initState();
    vm = _ViewModel(ref);
  }

  @override
  void deactivate() {
    super.deactivate();
    vm.deactivate();
  }

  @override
  Widget build(context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: ValueListenableBuilder<AsyncValue<void>>(
            valueListenable: vm.redeem_async_value,
            builder: (context, async_value, _) {
              return IgnorePointer(
                ignoring: async_value.isLoading,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text('Nhập mã bạn có',
                            textAlign: TextAlign.center,
                            style: context.textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                      ),
                      const Center(
                        child: Text(
                          'Nếu bạn không có mã bạn không thể sử dụng dịch vụ.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 36),
                      TextFormField(
                        controller: vm.text_editing_controller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(hintText: 'Nhập mã'),
                        validator: (value) {
                          if (async_value.hasError) {
                            return 'Mã không hợp lệ';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      async_value.maybeWhen(
                        loading: () {
                          return const ElevatedButton(
                            onPressed: null,
                            child: Spinner(
                              color: Colors.white,
                            ),
                          );
                        },
                        error: (_, __) {
                          return const ElevatedButton(
                            onPressed: null,
                            child: Text('ĐĂNG KÝ'),
                          );
                        },
                        orElse: () {
                          return ValueListenableBuilder<TextEditingValue>(
                              valueListenable: vm.text_editing_controller,
                              builder: (context, editting_val, _) {
                                return ElevatedButton(
                                  onPressed: editting_val.text.isNotEmpty
                                      ? () async {
                                          await vm.redeem();
                                        }
                                      : null,
                                  child: const Text('ĐĂNG KÝ'),
                                );
                              });
                        },
                      ),
                      const SizedBox(height: 24),
                      TextButton(
                        onPressed: () {
                          ref.read(authProvider).logout(replace: 1);
                        },
                        child: const Text('Đăng nhập tài khoản khác'),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class _ViewModel {
  _ViewModel(this.ref) {
    text_editing_controller.addListener(() {
      if (redeem_async_value.value.hasError) {
        redeem_async_value.value = const AsyncData(null);
      }
    });
  }

  ValueNotifier<AsyncValue<void>> redeem_async_value =
      ValueNotifier(const AsyncValue.data(null));
  TextEditingController text_editing_controller = TextEditingController();
  WidgetRef ref;

  Future<void> redeem() async {
    try {
      redeem_async_value.value = const AsyncValue.loading();
      await ref.read(redeem_provider).redeem(text_editing_controller.text);
      ref.read(navigatorProvider).pop();
    } catch (e, trace) {
      redeem_async_value.value = AsyncValue.error(e, trace);
    }
  }

  void deactivate() {
    redeem_async_value.dispose();
    text_editing_controller.dispose();
  }
}
