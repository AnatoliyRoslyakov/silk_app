import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:silk_app/domain/state/list_users_bloc.dart';

class ListUsersController extends Controller {
  @override
  void initListeners() {}

  void getList(BuildContext context) {
    context.read<ListUsersBloc>().add(const InitListUsersEvent());
    debugPrint('Список пользователей');
  }
}
