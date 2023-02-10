import 'dart:io';

import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/features/auth/provider/provider.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/modal/modal.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

class AuthBody extends ConsumerWidget {
  const AuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authProvider = ref.watch(authProvider);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            color: context.theme.primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SafeArea(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/images/login/background.png'),
                ),
              ),
            ),
          )),
          ConstrainedBox(
              constraints: BoxConstraints.loose(const Size.fromHeight(354)),
              child: Stack(
                children: [
                  Container(
                    color: context.theme.primaryColor,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 60),
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text('Đăng nhập',
                            style: GoogleFonts.chonburi(
                                textStyle:
                                    context.textTheme.headlineMedium!.copyWith(
                              color: Colors.black,
                            ))),
                        const SizedBox(height: 12),
                        const Text(
                          'Ứng dụng quản lý chat dành riêng cho các đối tác của Dabi.',
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        for (final method in [
                          const AuthMethod.facebook(),
                          if (Platform.isIOS) const AuthMethod.apple(),
                        ])
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ElevatedButton(
                              style: method.when(
                                facebook: () => context.elevatedButtonStyle(
                                  backgroundColor: const Color(0xFF1877F2),
                                ),
                                apple: () => null,
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(method.when(
                                      facebook: () => Icons.facebook,
                                      apple: () => Icons.apple,
                                    )),
                                    const SizedBox(width: 8),
                                    Text(
                                        'ĐĂNG NHẬP BẰNG ${method.when(facebook: () => 'FACEBOOK', apple: () => 'APPLE')}'),
                                  ]),
                              onPressed: () async {
                                try {
                                  ref.context.loaderOverlay.show();
                                  await _authProvider.login(method);
                                  ref.context.loaderOverlay.hide();
                                } catch (e) {
                                  final exception = $Exception.parse(error: e);
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ExceptionDialog(
                                          exception: exception,
                                          autoImplyReportButton: false,
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: const Text('OK'))
                                          ],
                                        );
                                      });
                                  ref.context.loaderOverlay.hide();
                                }
                              },
                            ),
                          ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              )),
        ]);
  }
}
