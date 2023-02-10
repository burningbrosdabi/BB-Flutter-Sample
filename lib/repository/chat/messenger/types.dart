enum SenderAction {
  typing_on('typing_on'),
  typing_off('typing_off'),
  mark_seen('mark_seen');

  final String action;
  const SenderAction(this.action);

  @override
  String toString() {
    return action;
  }
}
