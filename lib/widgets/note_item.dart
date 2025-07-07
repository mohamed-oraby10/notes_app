import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column( 
        children: [
          ListTile(
            title: Text("Flutter tips", style: TextStyle(color: Colors.black)),
            subtitle: Text(
              "build your career with mohamed oraby",
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text("July 7, 2025", style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
