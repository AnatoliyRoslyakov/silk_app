import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart'
    as clean;
import 'package:silk_app/app/pages/list_users_page/list_users_controller.dart';
import 'package:silk_app/app/theme/app_text_style.dart';
import 'package:silk_app/app/widgets/app_bar.dart';
import 'package:silk_app/app/widgets/search_button.dart';
import 'package:silk_app/app/widgets/user_card.dart';
import 'package:silk_app/domain/state/list_users_bloc.dart';

class ListUsersPage extends clean.View {
  const ListUsersPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ListUsersPageView();
}

class ListUsersPageView
    extends clean.ViewState<ListUsersPage, ListUsersController> {
  ListUsersPageView() : super(ListUsersController());

  @override
  Widget get view => Scaffold(
        appBar: appBar('Список пользователей', context),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: clean.ControlledWidgetBuilder<ListUsersController>(
              builder: (context, controller) {
                return BlocBuilder<ListUsersBloc, ListUsersState>(
                  builder: (context, state) {
                    return state.loaded
                        ? state.status == 200
                            ? CustomScrollView(
                                slivers: [
                                  SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                        return UserCard(
                                          user: state.listUsers[index],
                                        );
                                      },
                                      childCount: state.listUsers.length,
                                    ),
                                  ),
                                  SliverToBoxAdapter(
                                    child: !state.totalPage
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: SearchButton(
                                              onPressed: () {
                                                controller.getList(context);
                                              },
                                              icon: Icons.add,
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                ],
                              )
                            : Center(
                                child: Text(
                                  'Список не найденё\ncode: ${state.status}',
                                  style: AppTextStyle.mont16breg,
                                ),
                              )
                        : const Center(child: CircularProgressIndicator());
                  },
                );
              },
            ),
          ),
        ),
      );
}
