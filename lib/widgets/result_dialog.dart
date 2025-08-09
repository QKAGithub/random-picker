
import 'package:flutter/material.dart';

Future<void> showResultDialog(BuildContext context, String result) async {
  await showDialog(
    context: context,
    builder: (ctx) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Result', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, anim) => ScaleTransition(scale: anim, child: child),
                child: Text(result, key: ValueKey(result), style: const TextStyle(fontSize: 28)),
              ),
              const SizedBox(height: 16),
              TextButton(onPressed: () => Navigator.of(ctx).pop(), child: const Text('OK'))
            ],
          ),
        ),
      );
    },
  );
}
