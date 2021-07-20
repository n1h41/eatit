import 'package:eatit/components/coupons_tab.dart';
import 'package:eatit/components/restaurant_offers_tab.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List<Widget> _tabs = [
    RestaurntOfferTab(),
    Coupons(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'OFFERS',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: 'RESTAURANT OFFERS',
              ),
              Tab(
                text: 'COUPONS',
              ),
            ],
          ),
        ),
        body: TabBarView(children: _tabs,)
      ),
    );
  }
}
