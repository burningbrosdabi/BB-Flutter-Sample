part of 'input.dart';

class ViewModel {
  final TextEditingController inputController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final WidgetRef ref;
  late final InputAnimation animation;
  final Subject<void> keyStrokeStream = PublishSubject();
  final String conversation_id;

  final List<StreamSubscription> subscription = [];

  ViewModel({
    required this.ref,
    required this.conversation_id,
  }) {
    animation = InputAnimation(focusNode);

    subscription.add(keyStrokeStream
        .debounceTime(const Duration(seconds: 2))
        .listen((event) {
      toogleTyping(SenderAction.typing_off);
    }));

    subscription.add(keyStrokeStream
        .throttleTime(const Duration(seconds: 1))
        .listen((event) {
      toogleTyping(SenderAction.typing_on);
    }));
  }

  void toogleTyping(SenderAction action) {
    assert(
        action == SenderAction.typing_off || action == SenderAction.typing_on);
    ref.read(postmanProvider(conversation_id)).updateTypingAction(
          action: action,
        );
  }

  void deactivate() {
    animation.dispose();
    for (final sub in subscription) {
      sub.cancel();
    }
  }

  Future<void> onAttachmentPressed({
    required BuildContext context,
    required String conversation_id,
  }) async {
    await ref.read(modal_presentation).show(
        context: context,
        builder: (context) => GalleryPage(conversation_id: conversation_id));
    ref.refresh(photoIdsMapProvider.notifier);
  }

  Future<void> onSentPressed({required String conversation_id}) async {
    ref.read(postmanProvider(conversation_id)).sendTextMessage(
          message: inputController.text,
        );
    inputController.clear();
  }

  Future<void> onUploadPressed({
    required BuildContext context,
    required String conversation_id,
  }) async {
    final List<AssetEntity>? result = await AssetPicker.pickAssets(
      context,
      pickerConfig: AssetPickerConfig(
        pageSize: 21,
        gridCount: 3,
        requestType: RequestType.image,
        themeColor: context.theme.primaryColor,
      ),
    );
    if (result == null) return;
    await ref
        .read(postmanProvider(conversation_id))
        .uploadAttachments(assets: result);
  }

  void onTextChanged(value) {
    if (animation.actionsAnimationController.status ==
        AnimationStatus.dismissed) {
      animation.actionsAnimationController.forward();
    }
    keyStrokeStream.add(null);
  }

  void onExpandActions() {
    animation.actionsAnimationController.reverse();
  }

  void onShowQuickReplyModal(
      BuildContext context, String conversation_id) async {
    final quickReply = await ref.read(modal_presentation).show(
        context: context,
        builder: (context) {
          return const QuickReplyPage();
        });
    if (quickReply != null)
      ref.read(postmanProvider(conversation_id)).sendTextMessage(
            message: quickReply,
          );
  }

  void onShowProducts(BuildContext context) {
    ref.read(navigatorProvider).push($Route.product(conversation_id));
    // ref
    //     .read(modal_presentation)
    //     .show(
    //         context: context,
    //         builder: (context) {
    //
    //         })
    //     .whenComplete(() {
    //
    // });

    ref.refresh(selected_product);
  }
}

class InputAnimation {
  late final AnimationController _animationController;
  late final AnimationController actionsAnimationController;
  late final Animation<double> actionsAnim;
  late final Animation<double> reversedActionAnim;
  final FocusNode focusNode;

  InputAnimation(this.focusNode);

  void registeredAnimation(TickerProvider vsync) {
    _animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 220),
    );

    actionsAnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 220),
    );

    focusNode.addListener(onFocusChanged);

    _animationController.addStatusListener(onAnimationControllerStatusChanged);

    actionsAnim = actionsAnimationController.drive(Tween(begin: 1, end: 0));
    reversedActionAnim = ReverseAnimation(actionsAnim);
  }

  void onFocusChanged() {
    if (focusNode.hasFocus) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  void onAnimationControllerStatusChanged(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      actionsAnimationController.forward();
    } else if (status == AnimationStatus.dismissed) {
      actionsAnimationController.reverse();
    }
  }

  void dispose() {
    focusNode.removeListener(onFocusChanged);
    _animationController
        .removeStatusListener(onAnimationControllerStatusChanged);
    _animationController.dispose();
    actionsAnimationController.dispose();
  }
}
