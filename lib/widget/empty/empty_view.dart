import 'package:dabi_chat/model/exception/exception.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final String imagePath;
  final Widget? asset_panel;
  final String description;
  final String title;
  final List<Widget>? actions;

  const EmptyView({
    this.imagePath = 'assets/images/empty/follow.png',
    this.asset_panel,
    required this.description,
    required this.title,
    this.actions,
    Key? key,
  }) : super(key: key);

  factory EmptyView.error({
    required Object error,
    String? title,
    String? descriptionText,
    Key? key,
    List<Widget>? actions,
  }) {
    final exception = $Exception.parse(error: error);
    final _title = title ?? exception.meaning.title;
    final description = descriptionText ?? exception.meaning.description;

    return EmptyView(
      key: key,
      //  imagePath: understandableError.imageUrl,
      title: _title,
      description: description ?? '',
      actions: actions,
    );
  }

  factory EmptyView.auth({
    String? title,
    String? descriptionText,
    Key? key,
    String? imagePath,
  }) {
    final description = descriptionText ??
        'Đăng nhập ngay để sử dụng những chức năng hấp dẫn từ Dabi';
    return EmptyView(
      key: key,
      imagePath: imagePath ?? 'assets/images/empty/info_product.png',
      title: title ?? 'Bạn chưa đăng nhập',
      description: description,
      actions: const [
        // Button(
        //     onPressed: () {
        //       context.push(SignInRoute());
        //     },
        //     child: const Text('ĐĂNG NHẬP'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ConstrainedBox(
      constraints: BoxConstraints.loose(const Size.fromWidth(266)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 36),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: asset_panel ??
                    ConstrainedBox(
                      constraints: BoxConstraints.loose(const Size.square(150)),
                      child: Image.asset(imagePath),
                    ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  title,
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: textTheme.bodyText2!.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              if (actions != null) ...actions!,
            ],
          ),
        ),
      ),
    );
  }
}
