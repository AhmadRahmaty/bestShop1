import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10, right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: isSelected
                ? color
                : Colors.transparent,
            shape: BoxShape.circle),
      ),
    );
  }
}