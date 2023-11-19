import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Chat',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/images/edit.png'),
        ),
      ],
    );
  }
}
