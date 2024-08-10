import '../../../domain/entities/entities.dart';

class UserState {
  final User? user;
  final String errorMessage;

  UserState({
    this.user,
    this.errorMessage = '',
  });

  UserState copyWith({User? user, String? errorMessage}) => UserState(
        user: user ?? this.user,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}
