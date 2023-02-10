part of 'quick_reply_edit_form.dart';

enum EditMode {
  fill_in_placeholder(0),

  full_edit(1);

  final int mode_index;
  const EditMode(this.mode_index);

  int toInt() {
    return mode_index;
  }
}

@visibleForTesting
class ViewModel {
  final BuildContext rootContext;
  ViewModel({required this.rootContext});

  int index = 0;
  ValueNotifier<EditMode> mode = ValueNotifier(EditMode.fill_in_placeholder);
  TextEditingController textEditingController =
      TextEditingController(text: 'abc');
  final templateController = TemplatePlacholderController();

  void onEdit() {
    textEditingController.text = templateController.getFormatedReply();
    mode.value = EditMode.full_edit;
  }

  void onSent() {
    Navigator.of(rootContext).pop(
      mode.value == EditMode.fill_in_placeholder
          ? templateController.getFormatedReply()
          : textEditingController.text,
    );
  }
}
