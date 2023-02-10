import 'package:dabi_chat/features/quick_reply/provider/provider.dart';
import 'package:dabi_chat/model/model.dart';
import 'package:dabi_chat/repository/repository.dart';

final promo_future = FutureProvider<List<Promo>>((ref) {
  return PromotionsRepository(ref: ref).getPromotions();
});

final selected_promo =
    StateProvider.family<Promo?, String>((ref, conversation_id) => null);
