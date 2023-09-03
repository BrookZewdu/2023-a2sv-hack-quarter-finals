import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_request.dart';
import 'package:flutter_application_1/features/chat/domain/entity/chat_resposnse.dart';
import 'package:flutter_application_1/features/chat/domain/uscases/get_chat_response.dart';
// import 'chat_bot_event.dart';
part 'chat_bot_event.dart';
part 'chat_bot_state.dart';
class ChatBotBloc extends Bloc<ChatBotEvent, ChatBotState> {
  final GetChatResponse getChatResponse;
  ChatBotBloc({required this.getChatResponse}) : super(ChatBotInitialState()) {
    on<GetChatResponseEvent>((event, emit) async {
      emit(ChatBotLoadingState());
      print("before return from bloc");
      await getChatResponse(event.request).then(
        (value) {
          value.fold(
              (l) => emit(
                    ChatBotFailureState(error: l),
                  ), (r) {
            print("return from bloc");
            print(r);
            print("after return from bloc");
            return emit(ChatBotSuccessState(chatResponse: r));
          });
        },
      );
    });
    on<SetIntialStateEvent>(
      (event, emit) async {
        emit(ChatBotInitialState());
      },
    );
  }
}