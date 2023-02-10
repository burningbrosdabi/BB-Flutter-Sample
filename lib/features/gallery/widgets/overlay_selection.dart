import 'package:flutter/material.dart';

class OverlaySelection extends StatefulWidget {
  final Widget child;
  final bool initialValue;
  final Function(bool value) onChanged;
  final Alignment alignment;
  final WidgetBuilder? indicatorBuilder;

  const OverlaySelection(
      {required this.child,
      required this.initialValue,
      required this.onChanged,
      this.indicatorBuilder,
      this.alignment = Alignment.center,
      Key? key})
      : super(key: key);

  @override
  State<OverlaySelection> createState() => _OverlaySelectionState();
}

class _OverlaySelectionState extends State<OverlaySelection> {
  late bool selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          widget.onChanged(selected);
        });
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          widget.child,
          if (selected)
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white.withOpacity(0.73),
              alignment: widget.alignment,
              child: widget.indicatorBuilder?.call(context) ??
                  const Icon(
                    Icons.check_circle_rounded,
                    size: 32,
                  ),
            )
        ],
      ),
    );
  }
}
