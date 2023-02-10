import 'package:dabi_chat/features/customer/customer.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/widget/widget.dart';
import 'package:flutter/material.dart';

import 'address_expandable.dart';
import 'customer_address_editing_page_viewmodel.dart';

class CustomerAddressEditingPage extends ConsumerStatefulWidget {
  final String order_id;

  const CustomerAddressEditingPage({required this.order_id, super.key});

  static String route = '/address';

  @override
  ConsumerState<CustomerAddressEditingPage> createState() =>
      _CustomerAddressEditingPageState();
}

class _CustomerAddressEditingPageState
    extends ConsumerState<CustomerAddressEditingPage> {
  late final CustomerAddressEditingViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = CustomerAddressEditingViewModel(ref)..getProvinces();
  }

  @override
  void dispose() {
    super.dispose();
    _viewModel.dispose();
  }

  void onUpdate() {
    Navigator.pop(context, _viewModel.getRecipient(widget.order_id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Địa chỉ nhận hàng'),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: ValueListenableBuilder<bool>(
              valueListenable: _viewModel.validFormValue,
              builder: (context, valid, _) {
                return ElevatedButton(
                  child: const Text('LƯU'),
                  onPressed: valid ? onUpdate : null,
                );
              })),
      body: SafeArea(
        child: ValueListenableBuilder<AddressSelectionType>(
            valueListenable: _viewModel.addressSelectionTypeValue,
            builder: (context, selectionType, child) {
              return NestedScrollView(
                headerSliverBuilder: (context, _) {
                  return [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _viewModel.addressSelectionTypeValue.value =
                                  const AddressSelectionType.store();
                            },
                            child: Row(
                              key: const ValueKey(AddressSelectionType.store()),
                              children: [
                                $Radio<AddressSelectionType>(
                                    value: const AddressSelectionType.store(),
                                    groupValue: selectionType,
                                    onChanged: (value) {
                                      if (value == null) return;
                                      _viewModel.addressSelectionTypeValue
                                          .value = value;
                                    }),
                                const Text('Địa chỉ cửa hàng')
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _viewModel.addressSelectionTypeValue.value =
                                  const AddressSelectionType.custom();
                            },
                            child: Row(
                              key:
                                  const ValueKey(AddressSelectionType.custom()),
                              children: [
                                $Radio<AddressSelectionType>(
                                    value: const AddressSelectionType.custom(),
                                    groupValue: selectionType,
                                    onChanged: (value) {
                                      if (value == null) return;
                                      _viewModel.addressSelectionTypeValue
                                          .value = value;
                                    }),
                                const Text('Địa chỉ cá nhân')
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ];
                },
                body: Offstage(
                  offstage: _viewModel.addressSelectionTypeValue.value !=
                      const AddressSelectionType.custom(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AddressExpandable(
                          controller: _viewModel.provinceExpandCtrl,
                          headerEmptyTitle: 'Tỉnh/thành',
                          valueListenable: _viewModel.provincesValue,
                          selectedValueListenable: _viewModel.selectedProvince,
                        ),
                        AddressExpandable(
                          controller: _viewModel.districtExpandCtrl,
                          headerEmptyTitle: 'Quận/Huyện',
                          valueListenable: _viewModel.districtValue,
                          selectedValueListenable: _viewModel.selectedDistrict,
                        ),
                        AddressExpandable(
                          controller: _viewModel.wardExpandCtrl,
                          headerEmptyTitle: 'Phường/Xã',
                          valueListenable: _viewModel.wardValue,
                          selectedValueListenable: _viewModel.selectedWard,
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: InputLabel(
                              child: TextFormField(
                                controller: _viewModel.textEditingController,
                              ),
                              label: 'Địa chỉ chi tiết'),
                        ),
                        const SizedBox(height: 12),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: ValueListenableBuilder<String>(
                                valueListenable: _viewModel.preciseAddressvalue,
                                builder: (context, value, child) {
                                  return Text(value);
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
