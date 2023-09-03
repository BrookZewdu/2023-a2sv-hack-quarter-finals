import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_request.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_resposnse.dart';

abstract class ChatRepository {
  /// Fetches a chatbot response for the given [chatRequest].
  /// Returns a `Failure` on error or a `ChatResponse` on success.
  Future<Either<Failure, ChatResponse>> getChatResponse(ChatRequest chatRequest);
}