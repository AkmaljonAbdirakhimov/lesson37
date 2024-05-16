import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  String name = "";

  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              obscureText: true,
              onChanged: (value) {
                name = value;
                if (value.isEmpty) {
                  show = false;
                } else {
                  show = true;
                }
                setState(() {});
              },
              decoration: const InputDecoration(
                hintText: "Ism",
                labelText: "Ism",
                suffixIcon: Icon(Icons.person),
                // prefix: Icon(Icons.person),
                prefixIcon: Icon(Icons.person),
                errorText:
                    "Ism 3ta harfdan ko'proq bo'lishi lozimligini bilarmidingiz?",
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            if (show) const MeningTugmacham(),
            const SizedBox(height: 20),
            Text(name),
          ],
        ),
      ),
    );
  }
}

class MeningTugmacham extends StatefulWidget {
  const MeningTugmacham({super.key});

  @override
  State<MeningTugmacham> createState() => _MeningTugmachamState();
}

class _MeningTugmachamState extends State<MeningTugmacham> {
  late Timer time;
  @override
  void initState() {
    super.initState();
    print("<Men tug'ildim>");

    time = Timer.periodic(Duration(seconds: 1), (timer) {
      print(timer.tick);
    });
  }

  @override
  void dispose() {
    print("<Mel o'ldim>");
    time.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: const Text("Sening Tugmachang"),
    );
  }
}
