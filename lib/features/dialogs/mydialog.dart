import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDialog {
  MyDialog({
    required this.context,
  });

  final medalDialog = AlertDialog(
    title: SvgPicture.asset("assets/ui/medal_gold.svg"),
    content: const Text("You got a Golden Star!"),
  );

  final BuildContext context;
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return medalDialog;
      },
    );
  }
}
