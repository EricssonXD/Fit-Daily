import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDialog {
  const MyDialog({required this.context});
  final BuildContext context;

  void show() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return medalDialog(context);
      },
    );
  }

  AlertDialog medalDialog(BuildContext context) {
    return AlertDialog(
      title: SizedBox(
        height: 100,
        child: SvgPicture.asset("assets/ui/medal_gold.svg"),
      ),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Approve'),
        ),
      ],
    );
  }
}

enum MyDialogType {
  silverMedal,
  goldMedal,
}
