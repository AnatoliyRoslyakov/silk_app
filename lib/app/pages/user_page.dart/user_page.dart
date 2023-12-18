import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart'
    as clean;
import 'package:silk_app/app/pages/user_page.dart/user_controller.dart';
import 'package:silk_app/app/theme/app_text_style.dart';
import 'package:silk_app/app/widgets/app_bar.dart';
import 'package:silk_app/domain/state/user_bloc.dart';

class UserPage extends clean.View {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => UserPageView();
}

class UserPageView extends clean.ViewState<UserPage, UserController> {
  UserPageView() : super(UserController());

  @override
  Widget get view => Scaffold(
        appBar: appBar('Подробная информация', context),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: clean.ControlledWidgetBuilder<UserController>(
                builder: (context, controller) {
              return BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                return state.loaded
                    ? state.status == 200
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  clipBehavior: Clip.antiAlias,
                                  height: 300,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Image.network(
                                    state.user.data?.avatar ?? '',
                                    fit: BoxFit.cover,
                                  )),
                              ListTile(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(state.user.data?.firstName ?? '',
                                        style: AppTextStyle.mont20bbld),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(state.user.data?.lastName ?? '',
                                        style: AppTextStyle.mont20bbld)
                                  ],
                                ),
                                subtitle: Column(children: [
                                  Text(
                                    'Email: ${state.user.data?.email ?? ''}',
                                    style: AppTextStyle.mont16breg,
                                  ),
                                  Text(
                                    'ID: ${state.user.data?.id ?? ''}',
                                    style: AppTextStyle.mont16breg,
                                  ),
                                ]),
                              ),
                            ],
                          )
                        : Center(
                            child: Text(
                              'Пользователь не найденё\ncode: ${state.status}',
                              style: AppTextStyle.mont16breg,
                            ),
                          )
                    : const Center(child: CircularProgressIndicator());
              });
            }),
          ),
        ),
      );
}
