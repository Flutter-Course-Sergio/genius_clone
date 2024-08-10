import 'package:genius_clone/presentation/providers/token/token_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_provider.g.dart';

@Riverpod(keepAlive: true)
class TokenRiverpod extends _$TokenRiverpod {
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
