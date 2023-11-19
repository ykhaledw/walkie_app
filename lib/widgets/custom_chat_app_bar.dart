import 'package:flutter/material.dart';

class CustomChatAppBar extends StatelessWidget {
  const CustomChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Text(
          'Chat User',
          style: TextStyle(fontSize: 24),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.video_call_outlined),
        ),
      ],
    );
  }
}