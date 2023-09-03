import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<ChatMessage> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(ChatMessage(
        message: message,
        sender: Sender.User,
      ));
      // Call AI service or library to generate AI response
      // String aiResponse = generateAIResponse(message);
      // _messages.add(ChatMessage(
      //   message: aiResponse,
      //   sender: Sender.AI,
      // ));
      _textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                ChatMessage message = _messages[index];
                EdgeInsets messagePadding = EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                );

                Widget chatBubble;

                if (message.sender == Sender.User) {
                  chatBubble = Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      padding: messagePadding,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        message.message,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                } else {
                  chatBubble = Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      padding: messagePadding,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        message.message,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }

                return Padding(
                  padding: EdgeInsets.only(
                    left: 80.0,
                    right: 80.0,
                    bottom: 8.0,
                  ),
                  child: chatBubble,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _textEditingController.text.trim();
                    if (message.isNotEmpty) {
                      _sendMessage(message);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum Sender { User, AI }

class ChatMessage {
  final String message;
  final Sender sender;

  ChatMessage({
    required this.message,
    required this.sender,
  });
}
