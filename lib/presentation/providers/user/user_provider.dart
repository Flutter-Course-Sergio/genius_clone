import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class User extends _$User {
  @override
  UserState build() => UserState();

  Future<void> getCurrentUser(String token) async {
    await ref
        .read(userRepositoryProvider.notifier)
        .getCurrentUser(token)
        .then((userState) {
      state = state.copyWith(user: userState);
    });
  }
}
