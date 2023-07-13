import 'package:flutter/material.dart';
import 'package:untitled/Pages/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class DetailBody
    extends StatelessWidget {
  // final Product product;

  const DetailBody(
      {Key? key, required String product,
        // this.product
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          // height: height.size,
          child: Stack(children: [
            Container(
              margin:
                  const EdgeInsets.only(
                      bottom: 10),
              padding:
                  const EdgeInsets.only(
                      top: 100,
                      left: 40,
                      right: 50),
              // height: 5000,
              decoration:
                  const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(
                  topLeft:
                      Radius.circular(
                          24),
                  topRight:
                      Radius.circular(
                          24),
                ),
              ),
              child: Column(
                children: [
                  ColorAndSize(
                      product: "product"),
                  ProductTitleWithImage(),
                  SizedBox(height: 5,),
                  Description(),
                  SizedBox(height: 5,),
                  CounterWithFavBtn(),
                  SizedBox(height: 5,),
                  AddToCart()
                ],
              ),
            ),

          ]),
        )
      ]),
    );
  }
}


