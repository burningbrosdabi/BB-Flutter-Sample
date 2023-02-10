import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';
import 'package:dabi_chat/services/analytics/logging.dart';

class CustomerProvider extends StateNotifier<AsyncValue<Customer>> {
  final String conversation_id;
  final Ref ref;
  final Logging log = Logging('CustomerProvider');

  CustomerProvider({
    required this.ref,
    required this.conversation_id,
  }) : super(const AsyncValue.loading());

  Future<Customer> get() async {
    log.info(subTag: 'get');
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() {
      return CustomerRepository(ref: ref).getCustomer(conversation_id);
    })
      ..maybeWhen(
          orElse: () => {},
          error: ((error, trace) {
            log.error(subTag: 'get failed', error: error, trace: trace);
          }));
    return state.value!;
  }

  Future<void> update(Customer customer) async {
    try {
      log.info(subTag: 'update');
      await CustomerRepository(ref: ref).update(customer);
      state = AsyncValue.data(customer);
      log.info(subTag: 'update success');
    } catch (e, trace) {
      log.error(subTag: 'update failed', error: e, trace: trace);
      rethrow;
    }
  }
}

final customer_provider = StateNotifierProvider.family<CustomerProvider,
    AsyncValue<Customer>, String>((ref, conversation_id) {
  return CustomerProvider(conversation_id: conversation_id, ref: ref)..get();
});

final recipient_provider =
    StateProvider.family<Recipient?, String>((ref, _) => null);

class DraftingCustomer {
  Customer? value;

  DraftingCustomer(this.value);
}

final drafting_recipient =
    StateProvider.family<Recipient?, String>((ref, arg) => null);
