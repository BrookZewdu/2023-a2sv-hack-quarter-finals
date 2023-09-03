import 'package:flutter/material.dart';

/// The `ChatResponseScreen` widget displays a list of chat messages using the `ChatBox` widget.
/// It is used to show the conversation history between the user and the chatbot.

class ChatResponseScreen extends StatelessWidget {
  /// The list of chat messages to display.
  List chatMessages;

  /// Constructs a `ChatResponseScreen` with the provided [chatMessages].
  ChatResponseScreen({super.key, required this.chatMessages});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: chatMessages.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const SizedBox(
                  height: 16,
                ), // Add vertical spacing between chat messages.
              ],
            );
          },
        ),
      ),
    );
  }
}
