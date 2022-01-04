import 'package:flutter/material.dart';

class CustomBlocProvider extends StatelessWidget {
  const CustomBlocProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'learning',
      home: SafeArea(child: HomePage()),
      // Disable debug flag
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning'),
      ),
      body: const Center(
        child: Text('Learning'),
      ),
    );
  }
}
