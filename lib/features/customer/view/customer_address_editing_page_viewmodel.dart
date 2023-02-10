import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/address/address_repository.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';

import '../provider/provider.dart';

class CustomerAddressEditingViewModel {
  CustomerAddressEditingViewModel(this.ref)
      : _address_repo = ref.read(address_repository_provider) {
    selectedProvince.addListener(onSelectProvince);
    selectedDistrict.addListener(onSelectDistrict);
    selectedWard.addListener(onSelectWard);
    textEditingController.addListener(onTextChanged);
    addressSelectionTypeValue.addListener(onSelectionTypeValueChanged);
    validFormValue = ValueNotifier(
        addressSelectionTypeValue.value is StoreAddressSelectionType);
  }

  final WidgetRef ref;

  final AddressRepository _address_repo;
  final ValueNotifier<AsyncValue<List<Address>>> provincesValue =
      ValueNotifier(const AsyncValue.loading());
  final ValueNotifier<AsyncValue<List<Address>>> districtValue =
      ValueNotifier(const AsyncValue.loading());
  final ValueNotifier<AsyncValue<List<Address>>> wardValue =
      ValueNotifier(const AsyncValue.loading());
  final ValueNotifier<AddressSelectionType> addressSelectionTypeValue =
      ValueNotifier(const AddressSelectionType.store());

  final ValueNotifier<String> preciseAddressvalue = ValueNotifier('');
  final ValueNotifier<Address?> selectedProvince = ValueNotifier(null);
  final ValueNotifier<Address?> selectedDistrict = ValueNotifier(null);
  final ValueNotifier<Address?> selectedWard = ValueNotifier(null);

  late ValueNotifier<bool> validFormValue;

  final provinceExpandCtrl = ExpandableController();
  final districtExpandCtrl = ExpandableController();
  final wardExpandCtrl = ExpandableController();

  final TextEditingController textEditingController = TextEditingController();

  void getProvinces() async {
    final _address_repo = ref.read(address_repository_provider);
    provincesValue.value =
        await AsyncValue.guard(() => _address_repo.getProvinces());
  }

  void onSelectProvince() async {
    districtValue.value = const AsyncValue.loading();
    wardValue.value = const AsyncValue.loading();

    selectedDistrict.value = null;
    selectedWard.value = null;

    districtValue.value = await AsyncValue.guard(
      () => _address_repo.getDistrictsOrWards(
        selectedProvince.value!.id,
        AddressType.district(),
      ),
    );

    provinceExpandCtrl.expanded = false;
    await Future.delayed(ExpandableThemeData.defaults.animationDuration!);
    districtExpandCtrl.expanded = true;
    wardExpandCtrl.expanded = false;
    _appendPreciseAdress();
  }

  void onSelectDistrict() async {
    wardValue.value = const AsyncValue.loading();
    selectedWard.value = null;

    wardValue.value = await AsyncValue.guard(
      () => _address_repo.getDistrictsOrWards(
        selectedDistrict.value!.id,
        AddressType.ward(),
      ),
    );

    districtExpandCtrl.expanded = false;
    await Future.delayed(ExpandableThemeData.defaults.animationDuration!);
    wardExpandCtrl.expanded = true;
    _appendPreciseAdress();
  }

  void onSelectWard() {
    wardExpandCtrl.expanded = false;
    _appendPreciseAdress();
  }

  void onTextChanged() {
    _appendPreciseAdress();
  }

  void _appendPreciseAdress() {
    final text = [
      textEditingController.text,
      selectedWard.value?.name ?? '',
      selectedDistrict.value?.name ?? '',
      selectedProvince.value?.name ?? '',
    ].where((element) => isNotBlank(element)).join(', ');
    preciseAddressvalue.value = text;
    _validateForm();
  }

  void _validateForm() {
    final valid = isNotEmpty(textEditingController.text) &&
        isNotBlank(selectedWard.value?.name) &&
        isNotEmpty(selectedDistrict.value?.name) &&
        isNotEmpty(selectedProvince.value?.name);
    validFormValue.value = valid;
  }

  void dispose() {
    selectedProvince.removeListener(onSelectProvince);
    selectedDistrict.removeListener(onSelectDistrict);
    selectedWard.removeListener(onSelectWard);
    textEditingController.removeListener(onTextChanged);
    addressSelectionTypeValue.removeListener(onSelectionTypeValueChanged);
  }

  Recipient getRecipient(String order_id) {
    final recipient = ref.read(recipient_provider(order_id))!;
    return addressSelectionTypeValue.value.when(store: (ward, address) {
      return recipient.copyWith(recipient_information: address);
    }, custom: () {
      assert(selectedWard.value != null);
      return recipient.copyWith(
        recipient_information: preciseAddressvalue.value,
      );
    });
  }

  void onSelectionTypeValueChanged() {
    addressSelectionTypeValue.value.when(
        store: (_, __) => validFormValue.value = true,
        custom: () {
          _validateForm();
        });
  }
}
/***11003***/
