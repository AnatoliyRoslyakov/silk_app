import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silk_app/domain/entities/user/user.dart';
import 'package:silk_app/domain/repositories/abstract_user_repository.dart';

part 'list_users_bloc.freezed.dart';

@freezed
class ListUsersEvent with _$ListUsersEvent {
  const ListUsersEvent._();

  const factory ListUsersEvent.init() = InitListUsersEvent;
}

@freezed
class ListUsersState with _$ListUsersState {
  const ListUsersState._();

  const factory ListUsersState.initial(
          List<Data> listUsers, bool loaded, int status, bool totalPage) =
      InitialListUsersState;
}

class ListUsersBloc extends Bloc<ListUsersEvent, ListUsersState> {
  final AbstractUserRepository userRepository;
  ListUsersBloc(this.userRepository)
      : super(const InitialListUsersState([], false, 0, false)) {
    on<InitListUsersEvent>(_init);
  }
  int page = 1;
  Future<void> _init(
      InitListUsersEvent event, Emitter<ListUsersState> emit) async {
    final listUsers = await userRepository.getListUsers(page);

    if (page >= listUsers.$1.totalPages!) {
      emit(state.copyWith(totalPage: true));
      page = 1;
    }
    page++;
    var listAdd = state.listUsers + listUsers.$1.data!;
    emit(state.copyWith(
        listUsers: listAdd, loaded: true, status: listUsers.$2!));
  }
}
