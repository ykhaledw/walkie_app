import 'package:flutter/material.dart';
import 'package:walkie_talkie_app/views/group_chat_view.dart';
import 'package:walkie_talkie_app/views/individual_chat_view.dart';
import 'package:walkie_talkie_app/widgets/custom_app_bar.dart';
import 'package:walkie_talkie_app/widgets/custom_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 35,
          ),
          GestureDetector(
            onTap: () {},
            child: const Row(
              children: [
                Icon(Icons.archive_rounded),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Archived',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              CustomCard(
                text: 'Your Chats',
                imagePath: 'assets/images/individual.png',
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const IndividualChatView();
                  }));
                },
              ),
              const Spacer(),
              CustomCard(
                text: 'Your Groups',
                imagePath: 'assets/images/group_chat.png',
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const GroupChatView();
                  }));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
