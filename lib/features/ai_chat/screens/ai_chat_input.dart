part of "ai_chat_screen.dart";

class _AIChatInput extends HookConsumerWidget {
  const _AIChatInput();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();

    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message',
              ),
              minLines: 1,
              maxLines: 5,
            ),
          ),
          IconButton(
            onPressed: () {
              ref.read(aIChatManagerProvider.notifier).sendMessage(
                    message: messageController.text,
                  );
              messageController.clear();
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
