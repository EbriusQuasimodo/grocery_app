import 'package:flutter/material.dart';

class Category{
  final id;
  final imageName;
  Category({
    required this.imageName,
    required this.id,
  });
}



class CategoryCards extends StatelessWidget {
  CategoryCards({
    Key? key,
  }) : super(key: key);

  final _category = [
    Category(
      imageName: 'assets/images/img_1.png',
      id: 1,
    ),
    Category(
      imageName: 'assets/images/бакалея.png',
      id: 2,
    ),
    Category(
      imageName: 'assets/images/Fruits.png',
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

            final category = _category[index];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),

              child: InkWell(
                onTap: (){},

                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                    child: Image.asset(category.imageName),
                  ),

                ),
              ),

            );
          }
      ),
    );
  }
}

