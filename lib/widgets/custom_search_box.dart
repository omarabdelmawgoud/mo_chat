import 'package:flutter/material.dart';
import 'package:mo_chat/widgets/custom_text_field.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xffEDE9FE),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Expanded(child: CustomTextField()),
            SizedBox(width: 20),
            Icon(Icons.mic_none),
          ],
        ),
      ),
    );
  }
}
