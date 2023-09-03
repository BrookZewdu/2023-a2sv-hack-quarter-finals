import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/pixle_to_percent.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_request.dart';
import 'package:flutter_application_1/features/chat/presentation/bloc/bloc/chat_bot_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageInputCard extends StatelessWidget {
  List chatMessages;
  final TextEditingController _textEditingController = TextEditingController();

  MessageInputCard({Key? key, required this.chatMessages});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: pixleToPercent(46, "width"),
          vertical: pixleToPercent(20, "width"),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(96, 255, 255, 255),
          borderRadius:
              BorderRadius.circular(10.0), // Fixed border radius value
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onSubmitted: (value) {
                  String query = _textEditingController.text;
                  _textEditingController.clear();
                  chatMessages.add([0, query]);
                  BlocProvider.of<ChatBotBloc>(context).add(
                    GetChatResponseEvent(
                      request: ChatRequest(
                        message: query,
                        address: "ipadhgjlpopoplkdress",
                      ),
                    ),
                  );
                },
                textInputAction: TextInputAction.done,
                controller: _textEditingController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write a message ...',
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.send,
                color: Color.fromARGB(255, 247, 185, 0),
              ),
              onPressed: () {
                String query = _textEditingController.text;
                _textEditingController.clear();
                chatMessages.add([0, query]);
                BlocProvider.of<ChatBotBloc>(context).add(
                  GetChatResponseEvent(
                    request: ChatRequest(
                      message: query,
                      address: "ipadhgjlpopoplkdress",
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
