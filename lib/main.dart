import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:genius_clone/presentation/pages/user_page.dart';

import 'config/constants/environment.dart';
import 'presentation/providers/providers.dart';

void main() async {
  await Environment.initEnvironment();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  void initState() {
    ref.read(tokenProvider.notifier).getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: FutureBuilder(
              future: ref.read(tokenProvider.notifier).getToken(),
              builder: (_, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('An error occurred: ${snapshot.error}');
                } else {
                  final token = ref.watch(tokenProvider);
                  return UserPage(token: token);
                }
              })),
    );
  }
}
