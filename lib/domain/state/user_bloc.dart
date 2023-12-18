import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silk_app/domain/entities/user/user.dart';
import 'package:silk_app/domain/repositories/abstract_user_repository.dart';

part 'user_bloc.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const UserEvent._();

  const factory UserEvent.init(String id) = InitUserEvent;
}

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState.initial(User user, bool loaded, int status) =
      InitialUserState;
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final AbstractUserRepository userRepository;
  UserBloc(this.userRepository)
      : super(const InitialUserState(User(), false, 0)) {
    on<InitUserEvent>(_init);
  }
  Future<void> _init(InitUserEvent event, Emitter<UserState> emit) async {
    final user = await userRepository.getUser(event.id);
    emit(state.copyWith(loaded: true, user: user.$1, status: user.$2!));
  }
}
