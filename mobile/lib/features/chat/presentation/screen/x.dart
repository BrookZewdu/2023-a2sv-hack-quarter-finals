import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_request.dart';
import 'package:flutter_application_1/features/chat/presentation/bloc/bloc/chat_bot_bloc.dart';
// import 'package:flutter_application_1/features/chat/presentation/bloc/chat_bot_bloc.dart';
import 'package:flutter_application_1/features/chat/presentation/screen/firtScreen.dart';
// import 'package:navigation/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/chat_initial_page.dart';
import '../widget/chat_loding.dart';
import '../widget/chat_response_card.dart';
import '../widget/message_input_card.dart';

class ChatPage extends StatefulWidget {
  final List chatMessages;

  ChatPage({required this.chatMessages, Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ChatBotBloc>(context).add(GetChatResponseEvent(
      request: ChatRequest(
        message: widget.chatMessages[0][1],
        address: "ipadhgjlpopoplkdress",
      ),
    ));
  }

  void clearChat() {
    setState(() {
      widget.chatMessages.clear();
      _textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            clearChat();
            BlocProvider.of<ChatBotBloc>(context).add(SetIntialStateEvent());
            Navigator.of(context).pushReplacement(
              CupertinoPageRoute(
                builder: (context) => FirstPage(index: 1),
              ),
            );
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.amber,
            ),
            onPressed: () {
              clearChat();
              BlocProvider.of<ChatBotBloc>(context).add(SetIntialStateEvent());
              Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  builder: (context) => FirstPage(index: 1),
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          BlocBuilder<ChatBotBloc, ChatBotState>(
            builder: (context, state) {
              if (state is ChatBotInitialState) {
                return ChatResponseScreen(chatMessages: widget.chatMessages);
              } else if (state is ChatBotLoadingState) {
                return ChatLoadingScreen(chatMessages: widget.chatMessages);
              } else if (state is ChatBotSuccessState) {
                widget.chatMessages.add([1, state.chatResponse]);
                return ChatResponseScreen(chatMessages: widget.chatMessages);
              } else {
                return ChatInitialPage(chatMessages: widget.chatMessages);
              }
            },
          ),
          MessageInputCard(chatMessages: widget.chatMessages)
        ],
      ),
    );
  }
}
