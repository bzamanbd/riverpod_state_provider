import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_provider/providers.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            int count = ref.watch<int>(numProvider);
            return Text(count.toString(),
                style: ThemeData().textTheme.titleLarge!.copyWith(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(numProvider.notifier).state++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
