import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/uscases/usecase.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_request.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_resposnse.dart';
import 'package:flutter_application_1/features/chat/domain/repository/repoistory.dart';

/// Fetches chatbot responses based on user requests.
/// The responses are obtained in response to the given [ChatRequest].
class GetChatResponse extends UseCase<ChatResponse, ChatRequest> {
  final ChatRepository repository;

  /// Constructs a [GetChatResponse] instance with the required [repository].
  /// The [repository] is an instance of the `ChatRepository` used to fetch chatbot responses.
  GetChatResponse({required this.repository});

  /// Fetches a chatbot response for the provided [chatRequest].
  ///
  /// This function can produce a successful [ChatResponse] containing the requested
  /// information or, in case of an error, a [Failure].
  @override
  Future<Either<Failure, ChatResponse>> call(ChatRequest chatRequest) async {
    return await repository.getChatResponse(chatRequest);
  }
}