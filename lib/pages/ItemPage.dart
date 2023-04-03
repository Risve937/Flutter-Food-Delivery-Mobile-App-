import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickbitefdapp/Widgets/AppBarWidget.dart';

import '../Widgets/ItemNavBar.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(padding: EdgeInsets.all(16),
            child: Image.asset(
                "images/PIZZA/QB special pizza.jpg",
              height: 250,
            ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                              style: TextStyle(fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ),

                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "QB special pizza",
                      style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      width : 90,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CupertinoIcons.minus,
                            color: Colors.black,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(
                            CupertinoIcons.plus,
                            color: Colors.black,
                          ),
                        ],
                      ),

                    ),
                  ],
                  ),
                ),

                      Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                        child: Text("Double The Pizza, Double The Joy With Over 29 Different Flavors Only At Domino's! Great Savings With More Value.",
                        style: TextStyle(fontSize: 19),
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delivery Time: ",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5),
                              child: Icon(
                                CupertinoIcons.clock,
                              ),
                            ),
                            Text("20 Minutes ",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: ItemNavBar(),
    ) ;
  }
}