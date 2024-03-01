import 'package:auto_route/auto_route.dart';
import 'package:fit_daily/features/ai_chat/model/ai_chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;

part 'ai_chat_window.dart';
part 'ai_chat_input.dart';

@RoutePage()
class AIChatScreen extends StatelessWidget {
  const AIChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fit Daily'),
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(child: _AIChatWindow()),
          Divider(height: 1),
          _AIChatInput(),
        ],
      ),
    );
  }
}
