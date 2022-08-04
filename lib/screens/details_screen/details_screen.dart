import 'package:flutter/material.dart';

class DetailsScreenWidget extends StatefulWidget {
  const DetailsScreenWidget({Key? key}) : super(key: key);

  @override
  State<DetailsScreenWidget> createState() => _DetailsScreenWidgetState();
}

class _DetailsScreenWidgetState extends State<DetailsScreenWidget> {
  void onButtonTap() {
    Navigator.of(context).pushNamed('/home_screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details',
      style: TextStyle(
        color: Colors.black87,
        fontSize: 25,
        fontWeight: FontWeight.w300,
      ),),
        leading: IconButton(
        icon: Icon(Icons.arrow_back_sharp, color: Colors.black87,),
        onPressed: onButtonTap,),
      elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,

      ),
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('assets/images/b4.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            alignment: AlignmentDirectional.topStart,
            child: const Text('Watermelon',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.w300,),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              //padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            alignment: AlignmentDirectional.topStart,
            child: const Text('beloved all over the world, sweet, delicious fruit. One of its manifestations to fruits is due to the sugar pulp, others consider it a vegetable, since it is a close relative of the cucumber, from the point of view of botanists, the fruit of watermelon is pumpkin.',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            child: Container(
              height: 120,
              width: 300,
              //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              alignment: AlignmentDirectional.bottomCenter,
              child: ElevatedButton(
                onPressed: (){
                  print('pressed');
                },
                child: Text('\$ 15',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),),),
                  foregroundColor: MaterialStateProperty.all(Colors.white10),
                  shadowColor: MaterialStateProperty.all(Colors.green),
                  fixedSize: MaterialStateProperty.all(Size(100, 50)),
                  elevation: MaterialStateProperty.all(10),


                ),

              ),

            ),
          ),
        ],
      ),


    );
  }
}
