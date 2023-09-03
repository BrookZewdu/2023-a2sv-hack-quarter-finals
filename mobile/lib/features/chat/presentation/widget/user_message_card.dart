import 'package:flutter/material.dart';

class UserChatCard extends StatelessWidget {
  /// The user's chat message to be displayed in the card.
  final String chatMessage;

  /// Constructs a `UserChatCard` with the provided [chatMessage].
  UserChatCard({required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 242, 116,
              6), // Set the card's background color to the primaryColor defined in the colors.dart file.
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Text(
          chatMessage,
          style: const TextStyle(
              color: Color.fromARGB(255, 242, 234,
                  204)), // Set the text color to the secondaryTextColor defined in the colors.dart file.
        ),
      ),
    );
  }
}
