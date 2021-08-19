import 'package:flutter/material.dart';

class CustomStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: CircleBorder(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
            width: 4,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            'assets/images/img1.jpg',
          ),
        ),
      ),
    );
  }
}
