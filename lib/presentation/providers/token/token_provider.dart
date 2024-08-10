import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class Token extends _$Token {
  @override
  String build() => '';

  Future<void> getToken() async {
    await ref
        .read(tokenRepositoryProvider.notifier)
        .requestAccesToken()
        .then((value) {
      state = value.token;
    });
  }
}
