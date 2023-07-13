import 'package:flutter/material.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.all(
          8.0),
      child: Column(
        children: [
          const Text(
            "Best dress for all kind of style",
            style: TextStyle(
                color: Colors
                    .white),
          ),
          Text(
            "product.title",
            style: Theme.of(
                context)
                .textTheme
                .headlineMedium
                ?.copyWith(
                color: Colors
                    .white,
                fontWeight:
                FontWeight
                    .bold),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text:
                        "Price\n"),
                    TextSpan(
                        text:
                        "\$S{product.price}44",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Image(
                  height: 300,
                    width: 500,
                    image:
                    AssetImage(
                      '../../assets/images/10.jpg',
                    ),
                    fit: BoxFit
                        .fill),
              ),
            ],
          )
        ],
      ),
    );
  }
}