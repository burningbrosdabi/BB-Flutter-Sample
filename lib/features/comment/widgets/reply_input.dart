import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

class ReplyInput extends StatelessWidget {
  const ReplyInput({required this.controller, required this.onSubmit, Key? key})
      : super(key: key);
  final TextEditingController controller;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration:
                  const InputDecoration(hintText: 'Nhập tin nhắn phản hồi'),
              controller: controller,
            ),
          ),
          IconButton(onPressed: onSubmit, icon: const Icon(Dabicons.send))
        ],
      ),
    );
  }
}
