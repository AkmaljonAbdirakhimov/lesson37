import 'package:dars37/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 0),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) {
              return const HomePage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.telegram,
          size: 150,
          color: Colors.blue,
        ),
      ),
    );
  }
}
