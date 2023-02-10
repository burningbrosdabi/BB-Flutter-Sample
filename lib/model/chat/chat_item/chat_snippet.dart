import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_snippet.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class ChatSnippet with _$ChatSnippet {
  factory ChatSnippet() = _ChatSnippet;

  const factory ChatSnippet.text(String text) = _TextSnippet;
  const factory ChatSnippet.image() = _ImageSnippet;
  const factory ChatSnippet.video() = _VideoSnippet;
  const factory ChatSnippet.attachments(int length) = _AtmsSnippet;
  const factory ChatSnippet.share(bool is_like_sticker) = _ShareSnippet;
  const factory ChatSnippet.story() = _StorySnippet;

  const ChatSnippet._();

  String getText(bool is_mine) {
    final text = when<String>(
      () => '📎 Đính kèm',
      image: () => '🖼 ảnh',
      video: () => '📹 video',
      share: (is_like_sticker) => is_like_sticker ? '👍' : 'sticker',
      attachments: (length) => 'Gửi $length ảnh',
      story: () => 'Phản hồi từ story',
      text: (String text) => text,
    );
    return '${is_mine ? 'Bạn: ' : ''}$text';
  }
}
