import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import '../provider/provider.dart';

class CategoryFilter extends ConsumerWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final asyncVal = ref.watch(categoriesFutureProvider);
    return asyncVal.when(data: (data) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final item = data[index];
          return InkWell(
              onTap: () {
                ref.read(categorySelectionProvider.notifier).state = item;
                Navigator.of(context).pop();
              },
              child: SizedBox(
                  height: 48,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(item.title,
                          style: context.textTheme.labelMedium),
                    ),
                  )));
        },
        itemCount: data.length,
      );
    }, error: (error, stackTrace) {
      return EmptyView.error(
        error: error,
      );
    }, loading: () {
      return const CircularProgressIndicator();
    });
  }
}
