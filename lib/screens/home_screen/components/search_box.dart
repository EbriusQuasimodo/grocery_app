import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal:25, vertical:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), //закругление
        border: Border.all(
          color: Colors.black87.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'search',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
