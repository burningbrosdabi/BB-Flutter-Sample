import 'package:dabi_chat/features/auth/provider/auth_provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class AnimatedMessengerNoteListItem extends ConsumerWidget {
  const AnimatedMessengerNoteListItem({
    Key? key,
    required this.note,
    required this.onDelete,
    required this.animation,
  }) : super(key: key);

  final MessengerNote note;
  final Function(int pk) onDelete;
  final Animation<double> animation;

  @override
  Widget build(context, ref) {
    final formatter = DateFormat('dd-MMM HH:mm:ss');
    final datetime = formatter.format(note.created);
    return FadeTransition(
      opacity: animation.drive(Tween(begin: 0, end: 1)),
      child: SizeTransition(
          sizeFactor:
              CurvedAnimation(parent: animation, curve: const Interval(0, 0.25))
                  .drive(Tween(begin: 0, end: 1)),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: SizedBox.square(
                        dimension: 6,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                      ),
                    ),
                    Text(
                      datetime,
                      style: context.textTheme.labelSmall!
                          .copyWith(color: component_gray),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        note.staff.name,
                        style: context.textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(note.text)
                    ],
                  ),
                ),
                if (note.staff.pk == ref.read(user_provider)?.pk)
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 32,
                        width: 48,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: context.theme.errorColor,
                          ),
                          onPressed: () => onDelete(note.pk),
                          child: const Text('Xóa'),
                        ),
                      ))
              ],
            ),
          )),
    );
  }
}
