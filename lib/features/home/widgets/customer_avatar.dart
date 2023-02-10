import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

class CustomerAvatar extends StatelessWidget {
  final String? profile_pic;
  final AcquisitionSource source;

  const CustomerAvatar({
    required this.profile_pic,
    required this.source,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      height: 62,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: $Image(profile_pic,
                placeholder_url: 'assets/images/empty/avatar_placeholder.png'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox.square(
              dimension: 16,
              child: Image.asset('assets/images/icon/$source.png'),
            ),
          )
        ],
      ),
    );
  }
}
