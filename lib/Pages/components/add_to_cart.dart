import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets
          .symmetric(
          vertical:
          5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            height: 50,
            width: 58,
            decoration:
            BoxDecoration(
              borderRadius:
              BorderRadius.circular(
                  18),
              border: Border.all(
                  color: Colors
                      .blue),
            ),
            child:
            IconButton(
              icon: Icon(Icons
                  .shopping_cart),
              onPressed:
                  () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                //must background set
                  onPressed: () {},
                  child: Text(
                    "Buy Now"
                        .toUpperCase(),
                    style: TextStyle(
                      fontSize:
                      17,
                      fontWeight:
                      FontWeight.bold,
                      // color: Colors.white
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}