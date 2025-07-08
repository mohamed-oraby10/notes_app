import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text("Flutter tips", style: TextStyle(color: Colors.black,fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 8),
                child: Text(
                  "build your career with mohamed oraby",
                  style: TextStyle(color: Colors.black,fontSize: 17),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black,size: 35,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("July 7, 2025", style: TextStyle(color: Colors.black,fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
