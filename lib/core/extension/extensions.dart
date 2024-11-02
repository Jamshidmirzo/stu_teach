import 'package:flutter/material.dart';

extension SizedBoxExtencion on int {
  Widget hs() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget ws() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
