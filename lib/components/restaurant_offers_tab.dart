import 'package:flutter/material.dart';

class RestaurntOfferTab extends StatefulWidget {
  const RestaurntOfferTab({Key? key}) : super(key: key);

  @override
  _RestaurntOfferTabState createState() => _RestaurntOfferTabState();
}

class _RestaurntOfferTabState extends State<RestaurntOfferTab> {
  List<String> _restaurantList = [
    'Subway',
    'Pizza Hut Restaurant',
    'KFC Fried Chicken',
    'Dominos Pizza',
    'Subway',
    'Pizza Hut Restaurant',
    'KFC Fried Chicken',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.015, horizontal: size.width * 0.035,),
      child: Column(
        children: [
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
    );
  }
}
