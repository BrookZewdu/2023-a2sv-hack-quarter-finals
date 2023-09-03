import 'package:flutter/material.dart';
// import 'package:hakim_hub_mobile/core/utils/colors.dart';
// import 'package:hakim_hub_mobile/features/chatbot/data/models/chat_response_model.dart';
// import 'package:hakim_hub_mobile/features/chatbot/presentation/widgets/institution_card.dart';

import '../../data/models/chat_reponse_model.dart';

/// The `AiMessageCard` widget displays the chatbot's response as a message card.
/// It includes the chatbot's reply text and a list of institutes (if available) along with corresponding navigation functions.

class AiMessageCard extends StatelessWidget {
  /// The `ChatResponseModel` representing the chatbot's response message.
  final ChatResponseModel chatMessage;

  /// Callback function to navigate to a specific hospital using the hospital's [instituteId].
  final Function navigateHospital;

  /// Callback function to navigate to a specific doctor using the doctor's [doctorId].
  final Function navigateDoctor;

  /// Constructs an `AiMessageCard` with the provided [chatMessage], [navigateDoctor], and [navigateHospital].
  AiMessageCard({
    required this.chatMessage,
    required this.navigateDoctor,
    required this.navigateHospital,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 250, 235),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            // Display the chatbot's reply text.
            Text(
              chatMessage.message,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            // Check if there are institutes in the chatbot's response.
            SizedBox(
              height: 280,
            )
            // If no institutes in the response, show an empty container.
          ],
        ),
      ),
    );
  }
}
