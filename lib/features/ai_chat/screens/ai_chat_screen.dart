import 'package:auto_route/auto_route.dart';
import 'package:senior_active_adventure/features/ai_chat/model/ai_chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;
import 'package:senior_active_adventure/features/chat/screens/chat_screen.dart';

part 'ai_chat_window.dart';
part 'ai_chat_input.dart';

@RoutePage()
class AIChatScreen extends StatelessWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: Column(
    //     children: [
    //       Expanded(child: _AIChatWindow()),
    //       Divider(height: 1),
    //       _AIChatInput(),
    //     ],
    //   ),
    // );
    return const ChatScreen();
  }
}
