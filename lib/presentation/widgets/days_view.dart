import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DaysView extends HookConsumerWidget {
  const DaysView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Sat"),
        Text("Sun"),
        Text("Mon"),
        Text("Tue"),
        Text("Wed"),
        Text("Thu"),
        Text("Fri"),
      ],
    );
  }
}
