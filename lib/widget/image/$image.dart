// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class $Image extends StatelessWidget {
  final String image;
  final Color color;
  final String placeholder_url;

  const $Image(
    String? image, {
    Key? key,
    this.color = const Color(0xfff2f2f2),
    this.placeholder_url = 'assets/images/empty/placeholder.png',
  })  : image = image ?? '',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final devicePixelRatio = mediaQuery.devicePixelRatio;

    return LayoutBuilder(builder: (context, constrainst) {
      final cacheWidth =
          (min(constrainst.biggest.width, mediaQuery.size.width) *
                  devicePixelRatio)
              .round();

      if (Platform.environment.containsKey('FLUTTER_TEST')) return Container();
      final uri = Uri.tryParse(image);
      final imageProvider = uri == null
          ? AssetImage(placeholder_url)
          : (isHttp(uri) ? NetworkImage(image) : FileImage(File.fromUri(uri)))
              as ImageProvider;

      return Container(
          color: color,
          child: image.isEmpty
              ? Image.asset(
                  placeholder_url,
                  fit: BoxFit.cover,
                )
              : FadeInImage(
                  fadeInDuration: const Duration(milliseconds: 120),
                  fadeOutDuration: const Duration(milliseconds: 120),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: color,
                    );
                  },
                  fit: BoxFit.cover,
                  image: ResizeImage.resizeIfNeeded(
                    cacheWidth,
                    null,
                    imageProvider,
                  ),
                  placeholder: ResizeImage.resizeIfNeeded(
                    cacheWidth,
                    null,
                    AssetImage(
                      placeholder_url,
                    ),
                  ),
                ));
    });
  }
}

bool isHttp(Uri? uri) =>
    uri != null && (uri.isScheme('HTTP') || uri.isScheme('HTTPS'));
