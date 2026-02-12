import 'package:flutter/material.dart';

class CodeDisplay extends StatelessWidget {
  final String code;
  const CodeDisplay({required this.code, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.black,
      child: SingleChildScrollView(
        child: Text(
          code,
          style: const TextStyle(
            fontFamily: 'monospace',
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
