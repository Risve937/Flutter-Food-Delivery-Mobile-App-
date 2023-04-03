import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "tk 600/-",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 25,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              icon: Icon(CupertinoIcons.cart, color: Colors.black,),

              label: Text(
                "Add To Cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ), ],),
      ),
    );
  }
}