import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/footer.dart';
import 'components/header_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(),
            BodyContainer(),
            Footer(),
          ],
        ),
      ),
    );
  }
}


