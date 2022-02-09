import 'dart:async';
import 'dart:math';

import 'package:chat/core/models/chat_message.dart';
import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/chat/chat_service.dart';

class ChatMockService implements ChatService {
  static final List<ChatMessage> _msgs = [
    ChatMessage(
      id: 'id1',
      text: 'Bom dia',
      createdAt: DateTime.now().toString(),
      userId: '123',
      userName: 'Teste',
      userImageURL: 'assets/images/avatar.png',
    ),
    ChatMessage(
      id: 'id2',
      text: 'Bom dia',
      createdAt: DateTime.now().toString(),
      userId: '1234',
      userName: 'Teste1',
      userImageURL: 'assets/images/avatar.png',
    ),
    ChatMessage(
      id: 'id3',
      text: 'Bom dia',
      createdAt: DateTime.now().toString(),
      userId: '12345',
      userName: 'Teste2',
      userImageURL: 'assets/images/avatar.png',
    ),
  ];
  static MultiStreamController<List<ChatMessage>>? _controller;
  static final _msgsStream = Stream<List<ChatMessage>>.multi((controller) {
    _controller = controller;
    controller.add(_msgs);
  });

  Stream<List<ChatMessage>> messagesStream() {
    return _msgsStream;
  }

  Future<ChatMessage> save(String text, ChatUser user) async {
    final newMessage = ChatMessage(
      id: Random().nextDouble().toString(),
      text: text,
      createdAt: DateTime.now().toString(),
      userId: user.id,
      userName: user.name,
      userImageURL: user.imageUrl,
    );
    _msgs.add(newMessage);
    _controller?.add(_msgs);
    return newMessage;
  }
}
