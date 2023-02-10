part of 'summary_page.dart';

class _ViewModel {
  final WidgetRef ref;
  final OrderArgs args;
  final Mode mode;

  ValueNotifier<AsyncValue<void>> bindingOrderAsync =
      ValueNotifier(const AsyncValue.loading());

  _ViewModel({required this.args, required this.ref, required this.mode})
      : _order_manager = ref.read(order_manager(args)),
        _order_repository = ref.read(order_repository(args));

  final OrderManager _order_manager;
  final OrderRepository _order_repository;
  bool _draft_removed = false;

  String get conversation_id => args.conversation_id;

  String get order_id => args.order_id;

  void onSubmit() async {
    final context = ref.context;
    try {
      context.loaderOverlay.show();
      late OrderSubmissionFactory submitor;

      switch (mode) {
        case Mode.add:
          submitor = OrderCreation(
              order_repo: _order_repository,
              ref: ref,
              order_id: order_id,
              conversation_id: conversation_id);
          break;
        case Mode.update:
          final draft = await _order_manager.getDraft();
          submitor = OrderUpdate(
              order_repo: _order_repository,
              ref: ref,
              order_id: order_id,
              conversation_id: conversation_id,
              draft: draft!);
          break;
      }

      await submitor.submit();
      bool has_update = false;
      switch (mode) {
        case Mode.add:
          await _order_manager.removeDraft();
          _draft_removed = true;
          break;
        case Mode.update:
          has_update = true;
          break;
      }

      ref.context.loaderOverlay.hide();
      ref.read(modal_presentation).hide(has_update);
    } catch (e, trace) {
      showDialog(
          context: context,
          builder: (context) {
            return ExceptionDialog(
              exception: $Exception.parse(
                error: e,
                trace: trace,
              ),
            );
          });
      context.loaderOverlay.hide();
    }
  }

  void deactivate() async {
    if (!_draft_removed && mode == Mode.add) await _order_manager.savingDraft();
    _order_manager.invalidate();
  }

  void bindingOrder() async {
    bindingOrderAsync.value =
        await AsyncValue.guard(() => _order_manager.bindDraft());
  }
}
