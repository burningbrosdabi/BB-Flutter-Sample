import 'package:dabi_chat/model/model.dart';
import 'package:flutter/material.dart';
import '../../provider/provider.dart';

class PromoDropdown extends ConsumerWidget {
  final String order_id;
  const PromoDropdown({required this.order_id, super.key});

  @override
  Widget build(context, ref) {
    return ref.watch(promo_future).maybeWhen(
          data: (data) {
            final items = [
              const DropdownMenuItem<Promo>(
                child: Text(''),
                value: null,
              ),
              for (final promo in data)
                DropdownMenuItem<Promo>(
                  child: Text(promo.title),
                  value: promo,
                ),
            ];
            return DropdownButtonFormField<Promo?>(
                value: ref.watch(selected_promo(order_id)),
                items: items,
                onChanged: (value) {
                  ref.read(selected_promo(order_id).notifier).state = value;
                });
          },
          orElse: () => DropdownButtonFormField<void>(
            items: const [],
            onChanged: (Object? value) {},
          ),
        );
  }
}
