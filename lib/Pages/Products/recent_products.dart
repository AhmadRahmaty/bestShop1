import 'package:flutter/material.dart';
import '../components/detail_screen.dart';
import '../constants.dart';

class RecentProducts
    extends StatelessWidget {
  RecentProducts({Key? key})
      : super(key: key);

  final productList = [
    {
      'id': 1,
      'name': 'White Shirt',
      'image':
          '../../assets/images/1.jpg',
      'price': 50,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 2,
      'name': 'Red Shirt',
      'image':
          '../../assets/images/2.jpg',
      'price': 85,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 3,
      'name': 'Green Shirt',
      'image':
          '../../assets/images/3.jpg',
      'price': 40,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 4,
      'name': 'Blue Shirt',
      'image':
          '../../assets/images/4.jpg',
      'price': 90,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 5,
      'name': 'Violet Shirt',
      'image':
          '../../assets/images/5.jpg',
      'price': 70,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 6,
      'name': 'Brown Shirt',
      'image':
          '../../assets/images/6.jpg',
      'price': 100,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 7,
      'name': 'Black Shirt',
      'image':
          '../../assets/images/7.jpg',
      'price': 90,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 8,
      'name': 'Yellow Shirt',
      'image':
          '../../assets/images/8.jpg',
      'price': 20,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 9,
      'name': 'Pink Shirt',
      'image':
          '../../assets/images/9.jpg',
      'price': 150,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
    {
      'id': 10,
      'name': 'Pink Shirt',
      'image':
          '../../assets/images/10.jpg',
      'price': 1590,
      'disc':
          'Material: Georgette,Comfortable and Brethable to wear'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.80,
      ),
      itemBuilder:
          (BuildContext context,
              int index) {
        return RecentSingleProducts(
          recent_single_prod_disc:
              productList[index]
                  ['disc'],
          recent_single_prod_name:
              productList[index]
                  ['name'],
          recent_single_prod_image:
              productList[index]
                  ['image'],
          recent_single_prod_price:
              productList[index]
                  ['price'],
          // recent_single_prod_press: productList[index]['id'],
        );
      },
    );
  }
}

class RecentSingleProducts
    extends StatefulWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_disc;
  final Function()? recent_single_prod_press;

  RecentSingleProducts({
    Key? key,
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_disc,
    this.recent_single_prod_press
  }) : super(key: key);

  @override
  State<RecentSingleProducts>
      createState() =>
          _RecentSingleProductsState();
}

class _RecentSingleProductsState
    extends State<
        RecentSingleProducts> {
  bool isLike = false;
  final Color inactiveColor =
      Colors.black38;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.recent_single_prod_press,
      child: Column(
        children: [
          GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) =>
              DetailScreen()));},
            child: Container(
              height: 140,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius
                          .circular(30),
                  color: KPrimaryColor),
              child: Image(
                image: AssetImage(widget
                    .recent_single_prod_image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text(widget
                .recent_single_prod_name),
            subtitle: Text(
                '\$${widget.recent_single_prod_price}'),
            trailing: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color:
                        KPrimaryColor,
                    borderRadius:
                        BorderRadius
                            .circular(
                                30.0)),
                child: IconButton(
                    icon: Icon(
                      isLike
                          ? Icons
                              .favorite
                          : Icons
                              .favorite_border,
                      size: 15,
                      color: isLike
                          ? Colors.red
                          : inactiveColor,
                    ),
                    onPressed: () {
                      setState(() {
                        isLike =
                            !isLike;
                      });
                    })),
          )
        ],
      ),
    );
  }
}
