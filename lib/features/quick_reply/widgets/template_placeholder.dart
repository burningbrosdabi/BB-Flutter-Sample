import 'package:dabi_chat/widget/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class TemplatePlacholderController {
  late String Function() getFormatedReply;
}

class TemplatePlacholder extends StatefulWidget {
  final String text;
  final TemplatePlacholderController? controller;

  const TemplatePlacholder({
    required this.text,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<TemplatePlacholder> createState() => _TemplatePlacholderState();
}

class _TemplatePlacholderState extends State<TemplatePlacholder> {
  RegExp reg = RegExp(r'(?=(\{\{))|(?<=(\}\}))');
  List<String> senetences = [];
  Map<int, TextEditingController> controllersMap = {};

  @override
  void initState() {
    super.initState();
    widget.controller?.getFormatedReply = _reformat;

    setup();
  }

  @override
  void didUpdateWidget(TemplatePlacholder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) setup();
  }

  void setup() {
    senetences = widget.text.split(reg);
    controllersMap = {};
    senetences.forEachIndexed((index, element) {
      if (index.isEven) return;
      final textEditingController = TextEditingController();
      controllersMap[index] = textEditingController;
    });
  }

  String _reformat() {
    final text = senetences.reduceIndexed(
      (index, previous, element) {
        if (index.isOdd) {
          return previous + controllersMap[index]!.text;
        }
        return previous + element;
      },
    );
    return text;
  }

  void onSubmit() {
    // widget.onSubmit(_reformat());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Text.rich(
              TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: senetences.mapIndexed<InlineSpan>((index, value) {
                    if (index.isEven)
                      return TextSpan(
                        style: Theme.of(context).textTheme.bodyText2,
                        text: value,
                      );
                    else {
                      return WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(minWidth: 8),
                            child: IntrinsicWidth(
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                    inputDecorationTheme: InputDecorationTheme(
                                  isDense: true,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: light_gray),
                                  filled: false,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                )),
                                child: TextFormField(
                                  onFieldSubmitted: (value) => onSubmit(),
                                  controller: controllersMap[index],
                                  textInputAction: TextInputAction.newline,
                                  maxLines: null,
                                  minLines: 1,
                                  autofocus: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.red),
                                  decoration: InputDecoration(
                                    hintText: value.replaceAll(
                                        RegExp(r'({{)|(}})'), ''),
                                  ),
                                ),
                              ),
                            ),
                          ));
                    }
                  }).toList()),
            ),
          ),
        ),
      ],
    );
  }
}
