import 'package:flutter/material.dart';
import 'package:minimal_ecommorce_shop/components/my_list_title.dart';

class MyDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.background,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            //drawer header: logo
            DrawerHeader(child: Center(
              child: Icon(Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,),
            )),
            SizedBox(height: 25,),
            //shop title
            MyListTitle(text: "Shop", icon: Icons.home, onTap: () =>Navigator.pop(context),),

            //cart title
            MyListTitle(text: "Cart", icon: Icons.shopping_cart, onTap: () {
              //pop drawer first
              Navigator.pop(context);
              //go to cart page
              Navigator.pushNamed(context, '/cart_page');
            },),


          ],
        ),
        //exit title
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: MyListTitle(text: "Exit", icon: Icons.logout, onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro_page', (route) => false),),
        ),
      ],
    ),
  );
  }
}