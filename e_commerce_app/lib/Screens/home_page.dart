import 'package:e_commerce_app/Screens/productdetails.dart';
import 'package:e_commerce_app/model/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();

  bool isPressed = false;

  List<Product> products = [
    Product(
      image:
          'https://media.croma.com/image/upload/v1721992677/Croma%20Assets/Entertainment/Headphones%20and%20Earphones/Images/308673_jxaozj.png',
      name: 'LogiTech',
      description: 'Bluetooth Headset',
      price: '\$350',
    ),
    Product(
      image:
          'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/MXM23ref_FV99_VW_34FR+watch-case-46-aluminum-jetblack-nc-s10_VW_34FR+watch-face-46-aluminum-jetblack-s10_VW_34FR?...',
      name: 'Apple Watch',
      description: 'Smart Watch Series 9',
      price: '\$500',
    ),
    Product(
      image: 'https://m.media-amazon.com/images/I/416tc2kNGqL._SY900_.jpg',
      name: "Nike Shoes",
      description: "Comfortable and stylish running shoes",
      price: '\$1200',
    ),
    Product(
      image: 'https://www.mytheresa.com/media/356/402/30/8c/P00675612.jpg',
      name: "Gucci Bag",
      description: "Luxury designer bag with iconic style",
      price: '\$3200',
    ),
    // ضيف منتجات كمان لو تحب
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Center(child: Text('Home Page')),
      Center(child: Text('Search Page')),
      Center(child: Text('Profile Page')),
    ];
    int selectedIndex = 0;

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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hint: Padding(
                          padding: EdgeInsets.all(7),
                          child: Text("Search"),
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true,
                        suffixIcon: Icon(Icons.menu, size: 40),
                        suffixStyle: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  costumCategory(
                    categoryName: 'Laptops',
                    iconName: Icon(Icons.laptop),
                  ),
                  costumCategory(
                    categoryName: 'Travels',
                    iconName: Icon(Icons.card_travel_sharp),
                  ),
                  costumCategory(
                    categoryName: 'Phones',
                    iconName: Icon(Icons.phone_android),
                  ),
                  costumCategory(
                    categoryName: 'Gifts',
                    iconName: Icon(Icons.card_giftcard),
                  ),
                  costumCategory(
                    categoryName: 'Medical',
                    iconName: Icon(Icons.medical_services),
                  ),
                  costumCategory(
                    categoryName: 'Wheels',
                    iconName: Icon(Icons.accessible_forward),
                  ),
                  costumCategory(
                    categoryName: 'Wallets',
                    iconName: Icon(Icons.account_balance_wallet),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              "Best Selling",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),

            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة في الشبكة هو 2
                mainAxisSpacing:
                    10, // المسافة الرأسية بين الصفوف في الشبكة هي 10 بكسل
                crossAxisSpacing:
                    10, // المسافة الأفقية بين الأعمدة في الشبكة هي 10 بكسل
                childAspectRatio:
                    0.70, // نسبة العرض إلى الارتفاع لكل عنصر في الشبكة هي 0.70
              ),
              itemBuilder: (context, index) {
                final product = products[index];
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ItemDetails(data: product,))),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              product.image!,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            product.name!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            product.description!,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(height: 4),
                          Text(
                            product.price!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class costumCategory extends StatefulWidget {
  const costumCategory({
    super.key,
    required this.categoryName,
    required this.iconName,
  });

  final Icon iconName;
  final String categoryName;
  @override
  State<costumCategory> createState() => _costumCategoryState();
}

// ignore: camel_case_types
class _costumCategoryState extends State<costumCategory> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.14,
              height: MediaQuery.of(context).size.width * 0.14,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: widget.iconName,
            ),
            SizedBox(height: 20),
            Text(
              widget.categoryName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
