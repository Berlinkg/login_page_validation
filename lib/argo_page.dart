import 'package:flutter/material.dart';

class ArgoPage extends StatefulWidget {
  const ArgoPage({super.key});

  @override
  State<ArgoPage> createState() => _ArgoPageState();
}

class _ArgoPageState extends State<ArgoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArgoPage'),
      ),
    );
  }
}
