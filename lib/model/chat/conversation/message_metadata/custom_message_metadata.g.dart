// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_message_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageMetadata _$$_MessageMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MessageMetadata',
      json,
      ($checkedConvert) {
        final val = _$_MessageMetadata(
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$_MessageMetadataToJson(_$_MessageMetadata instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$VideoMetadata _$$VideoMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VideoMetadata',
      json,
      ($checkedConvert) {
        final val = _$VideoMetadata(
          data: $checkedConvert('data',
              (v) => AttachmentData.fromJson(v as Map<String, dynamic>)),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$VideoMetadataToJson(_$VideoMetadata instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$ImageMetadata _$$ImageMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ImageMetadata',
      json,
      ($checkedConvert) {
        final val = _$ImageMetadata(
          origin_url: $checkedConvert('origin_url', (v) => v as String),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ImageMetadataToJson(_$ImageMetadata instance) =>
    <String, dynamic>{
      'origin_url': instance.origin_url,
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$AttachmentsMetadata _$$AttachmentsMetadataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AttachmentsMetadata',
      json,
      ($checkedConvert) {
        final val = _$AttachmentsMetadata(
          attachments: $checkedConvert(
              'attachments',
              (v) => (v as List<dynamic>)
                  .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
                  .toList()),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$AttachmentsMetadataToJson(
        _$AttachmentsMetadata instance) =>
    <String, dynamic>{
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$ShareMetadata _$$ShareMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ShareMetadata',
      json,
      ($checkedConvert) {
        final val = _$ShareMetadata(
          url: $checkedConvert('url', (v) => v as String),
          is_like_sticker:
              $checkedConvert('is_like_sticker', (v) => v as bool? ?? false),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ShareMetadataToJson(_$ShareMetadata instance) =>
    <String, dynamic>{
      'url': instance.url,
      'is_like_sticker': instance.is_like_sticker,
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$StoryMetadata _$$StoryMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StoryMetadata',
      json,
      ($checkedConvert) {
        final val = _$StoryMetadata(
          url: $checkedConvert('url', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String? ?? 'Phản hồi'),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$StoryMetadataToJson(_$StoryMetadata instance) =>
    <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
      'title': instance.title,
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };

_$OwnerRequestMetadata _$$OwnerRequestMetadataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OwnerRequestMetadata',
      json,
      ($checkedConvert) {
        final val = _$OwnerRequestMetadata(
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : MeaningfulException.fromJson(v as Map<String, dynamic>)),
          reply_to: $checkedConvert('reply_to', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$OwnerRequestMetadataToJson(
        _$OwnerRequestMetadata instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'reply_to': instance.reply_to,
      'runtimeType': instance.$type,
    };
