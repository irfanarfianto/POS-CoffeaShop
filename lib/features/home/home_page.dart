import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pos_coffeashop/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS Coffeashop'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ExpansionTile(
            shape: const RoundedRectangleBorder(),
            title: const Text('Auth'),
            children: [
              ListTile(
                title: const Text('Login'),
                onTap: () {
                  context.pushNamed('login');
                },
              ),
              ListTile(
                title: const Text('Register'),
                onTap: () {
                  context.pushNamed('register');
                },
              ),
            ],
          ),
          // Add more ListTiles as needed
        ],
      ),
    );
  }
}
