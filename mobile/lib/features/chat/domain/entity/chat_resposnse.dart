import 'package:equatable/equatable.dart';

/// Represents a chatbot's response to a user's request.
/// This class encapsulates a response from the chatbot, including the [reply] text,
/// a list of associated [institutes] that might be relevant, and a [speciality]
/// indicating a specific area of expertise.
class ChatResponse extends Equatable {
  /// The chatbot's repclass ChatResponse {
  final String message;

  ChatResponse(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

  /// A list of institutes related to the chatbot's response.

  /// A specific area of expertise indicated in the chatbot's response.
  /// Creates a [ChatResponse] instance with the given details.
