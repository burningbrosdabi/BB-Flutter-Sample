import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatelessWidget {
  final Color color;
  const Spinner({this.color = Colors.black, super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: color,
      size: 32.0,
    );
  }
}

class SpinkitBox extends StatelessWidget {
  const SpinkitBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 100,
      child: Container(
        child: const Center(child: Spinner()),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.98),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
