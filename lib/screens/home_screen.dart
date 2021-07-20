import 'package:eatit/screens/offer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _placeName = 'Kaloor';
  String _address = 'Kaloor, Kochi, 666777, India';
  List<String> _restaurantList = [
    'Subway',
    'Pizza Hut Restaurant',
    'KFC Fried Chicken',
    'Dominos Pizza',
    'Subway',
    'Pizza Hut Restaurant',
    'KFC Fried Chicken',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                Text(
                  _placeName,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: size.height * 0.025,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              _address,
              style: TextStyle(
                color: Colors.black,
                fontSize: size.height * 0.017,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => OfferScreen(),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.local_offer_outlined,
                    color: Colors.black,
                  ),
                  Text(
                    'Offers',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.018,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.015, horizontal: size.width * 0.035),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.19,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Restaurants',
                                style: TextStyle(
                                  color: Color(0xffff4a71),
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.height * 0.031,
                                ),
                              ),
                              Text(
                                'No-contact delivery available',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: size.width * 0.2546,
                            height: size.height * 0.1317,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'image',
                                style: TextStyle(
                                    color: Colors.grey,
                                    /* fontWeight: FontWeight.bold, */
                                    fontSize: size.height * 0.03),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      width: size.width * 0.93,
                      child: Container(
                        padding: EdgeInsets.only(left: size.width * 0.02),
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                            color: Color(0xffff4a71),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'All Restaurants Nearby',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size.height * 0.024),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ListView.builder(
                  itemCount: _restaurantList.length,
                  itemBuilder: (BuildContext context, index) => Container(
                    margin: EdgeInsets.only(bottom: size.height * 0.02),
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: size.width * 0.2546,
                              height: size.height * 0.1317,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'image',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      /* fontWeight: FontWeight.bold, */
                                      fontSize: size.height * 0.03),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -(size.height * 0.02),
                              left: size.width * 0.03,
                              child: Container(
                                height: size.height * 0.04,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Color(0xffff4a71),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    '10% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _restaurantList[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * 0.029),
                              ),
                              Text(
                                'American',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Fort Kochi, 2.5 Kms',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Text('⭐'),
                                    Text(
                                      '4.1',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                    ),
                                    Text(
                                      '22 Mins',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                    ),
                                    Text(
                                      '₹300  For Two',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.local_offer_outlined,
                                    color: Color(0xffff4a71),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Text(
                                    'Buy 2 Get 1 Free',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xffff4a71),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}
