import 'package:flutter/material.dart';
import 'package:jogging_app/shared/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 40),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             AppButton()
            ],
          ),
        ),
      ),
    );
  }
}