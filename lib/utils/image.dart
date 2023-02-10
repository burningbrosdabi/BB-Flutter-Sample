import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:aws_s3_upload/aws_s3_upload.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:nanoid/nanoid.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

Future<String> download(Map<String, dynamic> params) async {
  final url = pick(params, 'url').asStringOrThrow();
  final path = pick(params, 'path').asStringOrThrow();
  try {
    final response = await Dio()
        .get(url, options: Options(responseType: ResponseType.bytes));

    final bytes = Uint8List.fromList(response.data);
    final contentType =
        response.headers.value(Headers.contentTypeHeader)!.split('/')[1];
    final file_name = pick(params, 'file_name').asStringOrNull() ??
        '${nanoid(10)}.$contentType';
    final file_dir = '$path/$file_name';

    await File(file_dir).writeAsBytes(
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes),
        flush: true);

    return file_dir;
  } catch (e) {
    rethrow;
  }
}

Future<String> _upload(Map<String, dynamic> params) async {
  final file = params['file'] as File;
  final subDir = params['subDir'] as String;
  final completer = Completer<String>();

  Future.delayed(const Duration(seconds: 20)).then((value) {
    if (!completer.isCompleted)
      completer.completeError(const $Exception.s3Timeout());
  });

  AwsS3.uploadFile(
    accessKey: "<KEY>",
    secretKey: "<SECRET-KEY>",
    file: file,
    destDir: 'media/$subDir',
    bucket: 'd-api-production-files',
    region: "ap-southeast-1",
  ).then((urlString) {
    final url = Uri.parse(urlString);
    final cdn_url = Uri.https('demjyucd2n5fg.cloudfront.net', url.path);

    // 'https://dkaypuu0k9bx8.cloudfront.net/${url.path}';
    if (!completer.isCompleted) completer.complete(cdn_url.toString());
  }).catchError((error) {
    if (!completer.isCompleted)
      completer.completeError($Exception.s3UploadFailed(error: error));
  });

  return completer.future;
}

Future<String> upload(File file, String subDir) async {
  return compute<Map<String, dynamic>, String>(_upload, {
    'file': file,
    'subDir': subDir,
  });
}

Future<String?> backgroundDownload(String url, [String? file_name]) async {
  final path = (await getTemporaryDirectory()).path;
  final uri = await compute<Map<String, dynamic>, String?>(download, {
    'url': url,
    'file_name': file_name,
    'path': path,
  });

  if (uri != null) {
    await ImageGallerySaver.saveFile(uri);
  }
  return uri;
}
