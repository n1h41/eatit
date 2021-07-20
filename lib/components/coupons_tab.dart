import 'package:flutter/material.dart';

class Coupons extends StatefulWidget {
  const Coupons({Key? key}) : super(key: key);

  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  List<Map> _coupons = [
    {
      'title': '30% Off',
      'subtitle': 'Flat 30% off on All items\nfor your first order',
      'validity': 'Valid till 30 Feb',
      'isExpanded': false,
      'description': ''
    },
    {
      'title': '100% Off',
      'subtitle': 'Flat ₹100 off on All items',
      'validity': 'Valid till 30 Feb',
      'isExpanded': false,
      'description': ''
    },
    {
      'title': '30% Off',
      'subtitle': 'Flat ₹100 off on All items\nfor your first order',
      'validity': 'Valid till 30 Feb',
      'isExpanded': true,
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.015,
        horizontal: size.width * 0.035,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'App Coupons',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: size.height * 0.03),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _coupons.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.015),
                  padding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.019,
                      vertical: size.height * 0.029),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _coupons[index]['title'],
                        style: TextStyle(
                            color: Color.fromRGBO(5, 209, 149, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.03),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _coupons[index]['subtitle'],
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            _coupons[index]['validity'],
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Visibility(
                        visible: _coupons[index]['isExpanded'],
                        child: Column(
                          children: [
                            Divider(thickness: 2),
                            Text(
                              _coupons[index]['description'],
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  /* height: size.height * 0.15, */
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0), //(x,y)
                        blurRadius: 1,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
