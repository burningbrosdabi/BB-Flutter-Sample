import 'package:dabi_chat/model/address/address.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:dabi_chat/widget/theme/color.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'address_expandable.vm.dart';

class AddressExpandable extends StatefulWidget {
  const AddressExpandable({
    required this.valueListenable,
    required this.controller,
    required this.selectedValueListenable,
    required this.headerEmptyTitle,
    super.key,
  });

  final ValueNotifier<AsyncValue<List<Address>>> valueListenable;
  final ValueNotifier<Address?> selectedValueListenable;
  final ExpandableController controller;
  final String headerEmptyTitle;

  @override
  State<AddressExpandable> createState() => _AddressExpandableState();
}

class _AddressExpandableState extends State<AddressExpandable> {
  late AddressExpandableViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel =
        AddressExpandableViewModel(asyncValueNotifier: widget.valueListenable);
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
        controller: widget.controller,
        theme: const ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          iconPadding: EdgeInsets.all(16),
          tapHeaderToExpand: true,
        ),
        header: ValueListenableBuilder<Address?>(
          valueListenable: widget.selectedValueListenable,
          builder: (context, value, child) {
            final has_value = value != null;
            return Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                !has_value ? widget.headerEmptyTitle : value.name,
                style: context.textTheme.labelMedium!
                    .copyWith(color: has_value ? Colors.black : component_gray),
              ),
            );
          },
        ),
        collapsed: const Offstage(),
        expanded: ValueListenableBuilder<AsyncValue<List<Address>>>(
          valueListenable: _viewModel.asyncValueNotifier,
          child: ValueListenableBuilder<List<Address>>(
              valueListenable: _viewModel.valueNotifier,
              builder: (context, data, _) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final item in data)
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 12.0,
                          right: 16.0,
                          left: 16.0,
                        ),
                        child: SizedBox(
                          height: 48,
                          child: ValueListenableBuilder<Address?>(
                            valueListenable: widget.selectedValueListenable,
                            builder: (context, value, child) {
                              final selected = value?.id == item.id;
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  textStyle: context.textTheme.bodyMedium,
                                  foregroundColor:
                                      !selected ? Colors.black : null,
                                  backgroundColor: !selected ? fade_gray : null,
                                  shape: const StadiumBorder(),
                                ),
                                child: Text(item.name),
                                onPressed: () {
                                  widget.selectedValueListenable.value = item;
                                  _viewModel.inputController.clear();
                                },
                              );
                            },
                          ),
                        ),
                      )
                  ],
                );
              }),
          builder: (context, value, list) {
            return value.maybeWhen(
                data: (_) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            controller: _viewModel.inputController,
                            decoration: const InputDecoration(
                              filled: false,
                              hintText: 'Tìm kiếm',
                            ),
                          ),
                          list!
                        ]),
                orElse: () => const Offstage());
          },
        ));
  }
}
