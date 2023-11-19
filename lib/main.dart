import 'package:flutter/material.dart';
import 'package:walkie_talkie_app/views/home_view.dart';

void main() {
  runApp(const WalkieTalkie());
}

class WalkieTalkie extends StatelessWidget {
  const WalkieTalkie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const HomeView(),
    );
  }
}
