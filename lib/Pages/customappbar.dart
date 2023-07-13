import 'package:flutter/material.dart';

import 'constants.dart';
class custom_appbar extends StatelessWidget {
  const custom_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment
          .spaceBetween,
      children: [
        Container(
          decoration:
          BoxDecoration(
            color:
            Colors.white,
            borderRadius:
            BorderRadius
                .circular(
                20),
          ),

        ),
        Column(
          children: const [
            Text(
              "Best Shop",style: TextStyle(fontSize: 20),
            ),
            Text(
              "We are the best",
              style: TextStyle(
                  fontSize:
                  11,
                  fontWeight:
                  FontWeight
                      .w200),
            ),
          ],
        ),
         CircleAvatar(
          backgroundColor:
          KPrimaryColor,
          child: Container(height:50,width:50,child: Image(image: AssetImage('../../assets/images/bestshoplogo.jpg'),fit: BoxFit.contain)),
        ),
      ],
    );
  }
}
