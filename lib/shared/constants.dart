import 'package:flutter/material.dart';

const interStyle  = TextStyle(
  fontFamily: "Inter",
  fontSize: 14,
  fontWeight: FontWeight.w600
);

class AppButton extends StatelessWidget {
  const AppButton({super.key,  this.callback});

  
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: callback,
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu),
            Icon(Icons.person)
          ],
        ),
      ),
    );
  }
}