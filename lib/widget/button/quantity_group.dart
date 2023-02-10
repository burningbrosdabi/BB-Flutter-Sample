import 'package:flutter/material.dart';

class QuantityGroup extends StatelessWidget {
  final int quantity;

  final Function(int value) onSubtract;
  final Function(int value) onAdd;
  final int max;
  final int min;
  final VoidCallback? onLowerThanMin;
  final VoidCallback? onHigherThanMax;
  final Widget Function(BuildContext context, int quanity)?
      quanityWidgetBuilder;

  const QuantityGroup({
    required this.quantity,
    required this.onAdd,
    required this.onSubtract,
    this.max = 0x7fffffffffffffff,
    this.min = 0,
    this.onHigherThanMax,
    this.onLowerThanMin,
    this.quanityWidgetBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(builder: (context) {
            final next = quantity - 1;
            return IconButton(
                onPressed: next < min
                    ? onLowerThanMin
                    : () {
                        onSubtract(next);
                      },
                icon: const Icon(Icons.remove_circle));
          }),
          if (quanityWidgetBuilder != null)
            quanityWidgetBuilder!(context, quantity)
          else
            SizedBox(
              width: 24,
              child: Center(
                child: Text('$quantity'),
              ),
            ),
          Builder(
            builder: (context) {
              final next = quantity + 1;
              return IconButton(
                  onPressed: next > max
                      ? onHigherThanMax
                      : () {
                          onAdd(next);
                        },
                  icon: const Icon(Icons.add_circle));
            },
          )
        ]);
  }
}
