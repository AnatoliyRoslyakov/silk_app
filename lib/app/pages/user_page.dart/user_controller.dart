import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';

class UserController extends Controller {
  late TextEditingController textController;

  @override
  void initListeners() {}

  @override
  void onDisposed() {
    textController.dispose();
    super.onDisposed();
  }

  void getUser() {
    debugPrint('Поиск пользователя: ${textController.text}');
  }

  void getList() {
    debugPrint('Список пользователей');
  }

  @override
  void onInitState() {
    textController = TextEditingController();
    super.onInitState();
  }
}
