import 'package:flutter/material.dart';
import 'color_dot.dart';
import 'detail_body.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key, required product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment:
          CrossAxisAlignment
              .start,
          children: [
            Text("Color"),
            Row(
              children: const [
                ColorDot(
                  color: Color(
                      0xff356c95),
                  isSelected:
                  true,
                ),
                ColorDot(
                  color: Color(
                      0xfff8c078),
                ),
                ColorDot(
                  color: Color(
                      0xffA29b9b),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}