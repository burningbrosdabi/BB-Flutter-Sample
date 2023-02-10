import 'package:flutter/material.dart';

class $Radio<T> extends StatefulWidget {
  final Function(T? value) onChanged;
  final T? groupValue;
  final T value;
  const $Radio(
      {required this.value,
      required this.onChanged,
      this.groupValue,
      super.key});

  static double size = 48.0;
  static double inner_size = 24.0;
  static double padding_inset = (size - inner_size) / 2;

  @override
  State<$Radio<T>> createState() => _$RadioState<T>();
}

class _$RadioState<T> extends State<$Radio<T>> {
  late bool _is_selected;

  @override
  void initState() {
    super.initState();
    _is_selected = widget.value == widget.groupValue;
  }

  @override
  void didUpdateWidget(covariant $Radio<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _is_selected = widget.value == widget.groupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular($Radio.size / 2),
      child: InkWell(
        onTap: () {
          widget.onChanged(widget.value);
        },
        child: SizedBox.square(
          dimension: $Radio.size,
          child: Center(
            child: SizedBox.square(
              dimension: $Radio.inner_size,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: AnimatedScale(
                    curve: Curves.bounceInOut,
                    duration: const Duration(milliseconds: 160),
                    scale: _is_selected ? 1 : 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
