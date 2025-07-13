import 'package:e_commerce_app/model/products.dart';
import 'package:flexible_text/flexible_text.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final Product data;
  const ItemDetails({super.key, required this.data});

  @override
  _ItemDetailsState createState() => _ItemDetailsState(product: data);
}

class _ItemDetailsState extends State<ItemDetails> {
  _ItemDetailsState({required this.product});

  final Product product;
    int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange[300],
        unselectedItemColor: Colors.orange,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            backgroundColor: Colors.orangeAccent,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            backgroundColor: Colors.orangeAccent,
            label: 'Crat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            backgroundColor: Colors.orangeAccent,
            label: "profile",
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value; // تحديث مؤشر العنصر الحالي
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(product.name!),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Card(
                    elevation: 6,
                    child: Image(
                      image: NetworkImage(product.image!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: FlexibleText(
              text: product.name!,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: FlexibleText(
              text: product.description!,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text(
                "Color: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: FlexibleText(
              text: product.price!,
              style: TextStyle(
                color: Colors.orange,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 0),
            child: MaterialButton(
              color: Colors.black,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shop_outlined,
                    size: MediaQuery.of(context).size.width * 0.08,
                    color: Colors.white,
                  ),
                  Text(
                    " Add To Cart",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
