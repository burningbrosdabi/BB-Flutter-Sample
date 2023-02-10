import 'package:dabi_chat/features/auth/auth.dart';
import 'package:dabi_chat/features/staff/staff.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/services/navigation/navigation.dart';
import 'package:dabi_chat/utils/context.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  static RouteSetting route() {
    return RouteSetting(
      '/setting',
    );
  }

  @override
  Widget build(context, ref) {
    void onDeleteAccount() async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: const Icon(Icons.warning_rounded),
            iconColor: context.theme.errorColor,
            title: const Text('Bạn có chắc chắn muốn xóa tài khoản'),
            content: RichText(
              text: TextSpan(style: context.textTheme.bodyMedium, children: [
                const TextSpan(text: 'Một khi tài khoản bị xóa, bạn sẽ bị '),
                TextSpan(
                    text: 'mất hết dữ liệu',
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.w900)),
                const TextSpan(text: ' cũng như '),
                TextSpan(
                    text:
                        'không thể tạo lại bằng tài khoản Facebook/Apple này.',
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.w900)),
              ]),
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    context.loaderOverlay.show();
                    await ref.read(authProvider).deleteAccount();
                    context.loaderOverlay.hide();
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'XÓA',
                    style: context.textTheme.bodyMedium!
                        .copyWith(color: context.theme.errorColor),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Hủy'))
            ],
          );
        },
      );
    }

    final user = ref.watch(user_provider);

    if (user == null) return const Offstage();

    return Scaffold(
      appBar: AppBar(title: const Text('Cài đặt')),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Theme(
            data: context.theme.copyWith(
                listTileTheme: context.theme.listTileTheme.copyWith(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 0))),
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Column(children: [
                  ...ListTile.divideTiles(color: fade_gray, tiles: [
                    ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                          backgroundColor: component_gray,
                          backgroundImage: AssetImage(
                              'assets/images/empty/avatar_placeholder.png')),
                      title: Text(
                        user.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SettingTile(
                      onTap: () async {
                        FlutterLogs.exportLogs(
                            exportType: ExportType.LAST_24_HOURS);
                      },
                      leading:
                          const Icon(CupertinoIcons.exclamationmark_triangle),
                      title: const Text(
                        'Báo lỗi',
                      ),
                    ),
                    // ignore: unnecessary_parenthesis
                    Consumer(builder: (context, ref, child) {
                      return ref.watch(working_status).when(data: (status) {
                        return SettingTile(
                          leading: const Icon(CupertinoIcons.pencil_circle),
                          onTap: () {
                            status.maybeWhen(active: () {
                              ref
                                  .read(working_status.notifier)
                                  .updateStatus(const WorkingStatus.away());
                              Navigator.of(context).pop();
                            }, orElse: () {
                              ref
                                  .read(working_status.notifier)
                                  .updateStatus(const WorkingStatus.active());
                              Navigator.of(context).pop();
                            });
                          },
                          title: status.when(
                            active: () => const Text(
                              'Kết ca',
                            ),
                            away: () => const Text(
                              'Bắt đầu ca làm việc',
                            ),
                          ),
                        );
                      }, loading: () {
                        return SettingTile(
                          onTap: () {},
                          title: Text(
                            'Đang kiểm tra...',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.grey,
                                    ),
                          ),
                          trailing: const CupertinoActivityIndicator(),
                        );
                      }, error: (error, stackTrace) {
                        return SettingTile(
                          onTap: () {
                            ref.watch(working_status.notifier).refresh();
                          },
                          title: Text(
                            'Không thể kiểm tra trạng thái làm việc',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.redAccent,
                                    ),
                          ),
                          trailing: Text(
                            'Thử lại',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        );
                      });
                    }),
                    SettingTile(
                      leading: const Icon(CupertinoIcons.shield),
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://burningbros.vn/privacy-policy'),
                            mode: LaunchMode.externalApplication);
                      },
                      title: Text('Chính sách bảo mật',
                          style: Theme.of(context).textTheme.bodyMedium!),
                    ),
                    SettingTile(
                      leading: const Icon(Dabicons.policy),
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://burningbros.vn/term-of-service'),
                            mode: LaunchMode.externalApplication);
                      },
                      title: Text('Điều khoản dịch vụ',
                          style: Theme.of(context).textTheme.bodyMedium!),
                    ),
                    SettingTile(
                      leading: const Icon(Icons.logout_rounded),
                      onTap: () {
                        Navigator.of(context).pop();
                        ref.read(authProvider).logout();
                      },
                      title: Text('Đăng xuất',
                          style: Theme.of(context).textTheme.bodyMedium!),
                    ),
                  ]).toList(),
                  const Spacer(),
                  SettingTile(
                    leading: const Icon(
                      CupertinoIcons.person_crop_circle_badge_xmark,
                      color: Colors.red,
                    ),
                    onTap: onDeleteAccount,
                    title: Text(
                      'Xóa tài khoản',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.red),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SettingTile extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? trailing;
  final VoidCallback onTap;
  const SettingTile(
      {this.leading,
      this.trailing,
      required this.onTap,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                if (leading != null) leading!,
                const SizedBox(width: 12),
                title,
                const Spacer(),
                if (trailing != null) trailing!,
              ],
            ),
          ),
        ));
  }
}
