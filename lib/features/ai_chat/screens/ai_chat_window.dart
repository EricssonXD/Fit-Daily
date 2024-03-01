part of 'ai_chat_screen.dart';

class _AIChatWindow extends ConsumerWidget {
  const _AIChatWindow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(aIChatManagerProvider);
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return _AIChatBubble(message: messages[index]);
      },
    );
  }
}

class _AIChatBubble extends StatelessWidget {
  const _AIChatBubble({Key? key, required this.message}) : super(key: key);

  final AIChatMessage message;

  @override
  Widget build(BuildContext context) {
    late final Color textColor;
    late final Color bgColor;
    late final BorderRadius bubbleBorder;
    late final MainAxisAlignment messageAlignment;
    late final EdgeInsets messageMargin;

    if (message.isUser) {
      textColor = Colors.white;
      bgColor = Colors.grey[900]!;
      bubbleBorder = const BorderRadius.only(
        topLeft: Radius.circular(18),
        bottomLeft: Radius.circular(18),
        bottomRight: Radius.circular(18),
      );
      messageAlignment = MainAxisAlignment.end;
      messageMargin =
          const EdgeInsets.only(right: 18.0, left: 50, top: 5, bottom: 5);
    } else {
      textColor = Colors.black;
      bgColor = Colors.grey[300]!;
      bubbleBorder = const BorderRadius.only(
        topRight: Radius.circular(18),
        bottomLeft: Radius.circular(18),
        bottomRight: Radius.circular(18),
      );
      messageAlignment = MainAxisAlignment.start;
      messageMargin =
          const EdgeInsets.only(right: 50.0, left: 18, top: 5, bottom: 5);
    }

    final messageTextGroup = Flexible(
      child: Row(
        mainAxisAlignment: messageAlignment,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isUser)
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomPaint(
                painter: _Triangle(Colors.grey[300]!),
              ),
            ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 14, right: 14, left: 14, top: 10),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: bubbleBorder,
              ),
              child: Text(
                message.message,
                style: TextStyle(color: textColor, fontSize: 14),
              ),
            ),
          ),
          if (message.isUser) CustomPaint(painter: _Triangle(bgColor)),
        ],
      ),
    );

    return Padding(
      padding: messageMargin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}

class _Triangle extends CustomPainter {
  final Color bgColor;

  _Triangle(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;

    var path = Path();
    path.lineTo(-5, 0);
    path.lineTo(0, 10);
    path.lineTo(5, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
