import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen/components/items_cards/bascket.dart';

class Items{
  final id;
  final imageName;
  final title;
  final description;
  Items( {
    required this.imageName,
    required this.id,
    required this.title,
    required this.description,
  });
}
class ItemCards extends StatelessWidget {
  ItemCards({
    Key? key,
  }) : super(key: key);

  final _itemsCard = [
    Items(
      imageName: 'assets/images/card4.png',
      id: 1,
      description: 'beloved all over the world, sweet, delicious fruit. One of its manifestations to fruits is due to the sugar pulp, others consider it a vegetable, since it is a close relative of the cucumber, from the point of view of botanists, the fruit of watermelon is pumpkin.',
      title: 'Watermelon \n',
    ),
    Items(
      imageName: 'assets/images/card3.png',
      id: 2,
      description: 'the bright orange flesh has a particularly sweet, mild taste and creamy texture. The flavor is often compared to that of a melon, but papaya is less sweet and has a softer texture. To get the full tropical flavor, it is important to eat ripe papaya.',
      title: 'Papaya \n',
    ),
    Items(
      imageName: 'assets/images/card2.png',
      id: 3,
      description: 'ripe, fresh strawberries contain a combination of fruity notes, caramel, spices and herbs on the palate. Some varieties of strawberries have strong pineapple flavors. Strawberries form harmonious combinations with warm sweet spices and other fruits.',
      title: 'Strawberry \n',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemExtent: 200,
          itemBuilder: (BuildContext context, int index){
            final items = _itemsCard[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),

              child: InkWell(
                onTap: (){},

                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: Stack(
                    textDirection: TextDirection.ltr,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(items.imageName),
                      ),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        padding: EdgeInsets.all(15),

                        child: RichText(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: items.title, //itemsCard.title
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),),
                              TextSpan(
                                text: items.description,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,),)
                            ],
                          ),
                        ),
                      ),

                      Bascket(),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}



