import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDialog {
  const MyDialog({
    required this.context,
    required this.type,
  });

  final BuildContext context;
  final MyDialogType type;

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
      icon: SizedBox(
        height: 150,
        child: SvgPicture.asset("assets/ui/medal_${type.image}.svg"),
      ),
      content: Text('You got a ${type.content}!', textAlign: TextAlign.center),
      actions: const <Widget>[],
    );
  }
}

enum MyDialogType {
  goldMedal(content: "Gold Star", image: "gold"),
  silverMedal(content: "Silver Star", image: "silver"),
  monsterMedal(content: "Monster Star", image: "monster"),
  ;

  const MyDialogType({
    required this.content,
    required this.image,
  });

  final String content;
  final String image;
}
