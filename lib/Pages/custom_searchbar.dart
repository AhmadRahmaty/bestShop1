import 'package:flutter/material.dart';

import 'constants.dart';



class custom_searchbar extends StatelessWidget {
  const custom_searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child:
                Container(
                  decoration: BoxDecoration(
                      color: Colors
                          .white,
                      borderRadius:
                      BorderRadius.circular(
                          20),
                      boxShadow: const [
                        BoxShadow(
                          color:
                          Colors.black38,
                          blurRadius:
                          4,
                        ),
                      ]),
                  child:
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide
                                .none),
                        prefixIcon:
                        Icon(Icons.search)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                BoxDecoration(
                  color:
                  KPrimaryColor,
                  borderRadius:
                  BorderRadius
                      .circular(
                      20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors
                            .black38,
                        blurRadius:
                        4),
                  ],
                ),
                child:
                IconButton(
                  onPressed:
                      () {},
                  icon: const Icon(
                      Icons
                          .sort_by_alpha),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
