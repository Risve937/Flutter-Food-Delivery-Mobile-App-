import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10
        ),
        child: Column(children: [
          //single Item
          //for (int i=0; i<10; i++)
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "ItemPage",);
                      },

                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                          "images/PIZZA/QB special pizza.jpg",
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "QB Special Pizza",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Good food with great quality",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                                Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (index){},
                  ),

                        Text(
                          "tk 600/-",
                          style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        ),


                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border,
                          color: Colors.red,
                          size: 28,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 10),
            child: Container(
              width: 380,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/SMOOTHIE/Mango-Smoothie.jpg",
                        height: 120,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Mango Smoothie",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Relaxing Drinks",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          onRatingUpdate: (index){},
                        ),

                        Text(
                          "tk 130/-",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite_border,
                          color: Colors.red,
                          size: 28,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.red,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),





        ],),
      ),
    );
  }
}