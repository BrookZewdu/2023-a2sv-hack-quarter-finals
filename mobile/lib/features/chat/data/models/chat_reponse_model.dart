import '../../domain/entity/chat_resposnse.dart';

/// A model class that represents a chatbot response for the chatbot application.
class ChatResponseModel extends ChatResponse {
  /// Constructs a [ChatResponseModel] instance with the provided data.
  ///
  /// The [reply], [speciality], and [institutes] parameters are required.
  ChatResponseModel({
    required String reply,
  }) : super("kl");

  /// Constructs a [ChatResponseModel] instance from a JSON map.
  ///
  /// The [json] parameter should contain the chatbot response data in JSON format,
  /// including an array of institute data. Returns a new [ChatResponseModel] instance
  /// with the parsed data.
  factory ChatResponseModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> instituesList = json['institutions'] ?? [];

    return ChatResponseModel(
      reply: json['reply'] ?? "",
    );
  }
}
