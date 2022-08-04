import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen/components/app_bar.dart';
import 'package:grocery_app/screens/home_screen/components/category_cards.dart';
import 'package:grocery_app/screens/home_screen/components/discount_cards.dart';
import 'package:grocery_app/screens/home_screen/components/items_cards/items_cards.dart';
import 'package:grocery_app/screens/home_screen/components/search_box.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 16,
        color: Colors.black87);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(context),
      body: ListView(
        children: [
          Column(
            children: [
              SearchBox(
                  onChanged: (value) {}
                  ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 15,bottom: 20),
                alignment: AlignmentDirectional.centerStart,
                child: Text('Top Discounted items',
                style: textStyle),
              ),
              DiscountCard(),
              Container(
                padding: EdgeInsets.only(top: 20, left: 15,bottom: 20),
                alignment: AlignmentDirectional.centerStart,
                child: Text('Select Categories',
                  style: textStyle),
              ),
              CategoryCards(),
              Container(
                padding: EdgeInsets.only(top: 20, left: 15,bottom: 20),
                alignment: AlignmentDirectional.centerStart,
                child: Text('Recently Viewed items',
                    style: textStyle),
              ),
              ItemCards(),

            ],
          ),
        ],
      ),
    );
  }
}

