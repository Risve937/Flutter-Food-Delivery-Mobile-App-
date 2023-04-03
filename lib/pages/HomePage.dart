import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart
import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/NewestItemWidget.dart';
import '../Widgets/PopularItemWidget.dart';

class HomePage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          //custom app bar widget
          AppBarWidget(),

          //search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
                child: Row(children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What would you like to have?",
                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list),
                ],
                ),
              ),
            ),
          ),

          //category
          Padding(
              padding: EdgeInsets.only(top: 20,left: 20),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //CATEGORY WIDGET
          CategoriesWidget(),

          //popular offers
          Padding(
            padding: EdgeInsets.only(top: 20,left: 20),
            child: Text(
              "Hot Deals!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //popular offers widget
          PopularItemWidget(),

         //newest Items
          Padding(
            padding: EdgeInsets.only(top: 20,left: 20),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //popular offers widget
          NewestItemWidget(),

        ],
      ),
      drawer: DrawerWidget() ,
      floatingActionButton: Container(
        decoration:
        BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, "CartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
              color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}