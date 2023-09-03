import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

/// It is used to show the loading animation during the time the chatbot is processing the user's input.

class ChatLoadingScreen extends StatelessWidget {
  /// The list of chat messages to display.
  List chatMessages;

  /// Constructs a `ChatLoadingScreen` with the provided [chatMessages].
  ChatLoadingScreen({super.key, required this.chatMessages});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: chatMessages.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == chatMessages.length) {
                    // Display the loading animation widget when reaching the last index.
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LoadingAnimationWidget.waveDots(
                            color: Colors
                                .amber, // Set the color of the loading animation.
                            size: 30, // Set the size of the loading animation.
                          ),
                        ],
                      ),
                    );
                  }
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
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ), // Add additional padding at the top of the loading screen.
        ],
      ),
    );
  }
}
