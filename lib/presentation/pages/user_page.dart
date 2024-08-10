import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';

class UserPage extends ConsumerStatefulWidget {
  String token;

  UserPage({super.key, required this.token});

  @override
  ConsumerState<UserPage> createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
  @override
  void initState() {
    ref.read(userProvider.notifier).getCurrentUser(widget.token);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider).user;

    final username = user != null ? user.name : "No name";

    return Scaffold(
      body: Center(
        child: Text(username),
      ),
    );
  }
}
