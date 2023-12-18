import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silk_app/app/router/mobile_routes.dart';
import 'package:silk_app/domain/state/list_users_bloc.dart';
import 'package:silk_app/domain/state/user_bloc.dart';

class HomeController extends Controller {
  late TextEditingController textController;

  @override
  void initListeners() {}

  @override
  void onDisposed() {
    textController.dispose();
    super.onDisposed();
  }

  void getUser(BuildContext context) {
    context.read<UserBloc>().add(InitUserEvent(textController.text));
    context.go(MobileRoutes.user.path);
  }

  void getList(BuildContext context) {
    context.go(MobileRoutes.list.path);
    context.read<ListUsersBloc>().add(const InitListUsersEvent());
  }

  @override
  void onInitState() {
    textController = TextEditingController();
    super.onInitState();
  }
}
