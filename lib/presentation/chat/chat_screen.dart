import 'package:el_reprobado/presentation/widgets/her_message_bubble.dart';
import 'package:el_reprobado/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "http://placekitten.com/100/100"
            ),
          ),
        ),
        title: const Text('Un gato molon mogollon'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }





}

class _ChatView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}