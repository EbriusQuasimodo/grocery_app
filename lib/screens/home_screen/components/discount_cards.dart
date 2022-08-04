import 'package:flutter/material.dart';

class DiscountImage{
  String imageName;
  int id;

  DiscountImage({
    required this.imageName,
    required this.id,
  });
}

class DiscountCard extends StatelessWidget {

  DiscountCard({
    Key? key,

  }) : super(key: key);

  final _discountImg = [
    DiscountImage(
      imageName: 'assets/images/discountberry.png',
      id: 1,
    ),
    DiscountImage(
      imageName: 'assets/images/discountbrocoli.png',
      id: 2,
    ),
    DiscountImage(
      imageName: 'assets/images/discountmeat.png',
      id: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemExtent: 200,
          itemBuilder: (BuildContext context, int index){

            final discount = _discountImg[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),

              child: InkWell(
                onTap: (){},

                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(discount.imageName),
                  ),
                ),
              ),
            );
          }
          ),
    );
  }
}

