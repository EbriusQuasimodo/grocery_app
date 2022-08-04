import 'package:flutter/material.dart';

class Bascket extends StatelessWidget {
  const Bascket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      alignment: AlignmentDirectional.bottomEnd,
      child: IconButton(
        onPressed: (){},
        icon: Icon(Icons.shopping_basket_outlined,
          color: Colors.white,),),
    );
  }
}

