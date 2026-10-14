import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: FadeDemo()),
      ),
    );
  }
}

class FadeDemo extends StatefulWidget {
  const FadeDemo({super.key});

  @override
  State<FadeDemo> createState() => _FadeDemoState();
}

class _FadeDemoState extends State<FadeDemo> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedOpacity(
          opacity: visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: const Text('Hello', style: TextStyle(fontSize: 32)),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => setState(() => visible = !visible),
          child: const Text('Fade'),
        ),
      ],
    );
  }
}