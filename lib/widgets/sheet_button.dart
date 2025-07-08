import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class SheetButton extends StatelessWidget {
  const SheetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration:BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ) ,
        child: Center(
          child: Text("Add",style: TextStyle(fontSize: 20,
            color: Colors.black
          ),),
        )
      ),
    );
  }
}