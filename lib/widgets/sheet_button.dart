import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class SheetButton extends StatelessWidget {
  const SheetButton({super.key, this.onTap, this.isLoading= false});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading? SizedBox
          (
            height: 25,
            width: 25,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ) : Text(
            "Add",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
