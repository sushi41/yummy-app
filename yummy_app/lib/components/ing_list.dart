import 'package:flutter/material.dart';

class IngList extends StatelessWidget {
  const IngList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'For Samosa Dough',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '250 g Flour (or Organic Maida)',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
