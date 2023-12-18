import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silk_app/app/router/app_router.dart';
import 'package:silk_app/data/repositories/user_repository_impl.dart';
import 'package:silk_app/domain/repositories/abstract_user_repository.dart';
import 'package:silk_app/domain/state/list_users_bloc.dart';
import 'package:silk_app/domain/state/user_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter router = AppRouter().router();
  // для управления зависимостями лучше использовать get_it, но...
  final AbstractUserRepository userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (context) => UserBloc(userRepository)),
        BlocProvider<ListUsersBloc>(
            create: (context) => ListUsersBloc(userRepository)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
