import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text,required this.barIcon});
  final String text;
  final IconData barIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(text, style: TextStyle(fontSize: 32)),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff3C3B3D),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(barIcon, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
