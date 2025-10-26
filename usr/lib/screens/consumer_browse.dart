import 'package:flutter/material.dart';

class ConsumerBrowse extends StatelessWidget {
  const ConsumerBrowse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Products'),
      ),
      body: const Center(
        child: Text('Consumer Browse - Browse products from farmers'),
      ),
    );
  }
}