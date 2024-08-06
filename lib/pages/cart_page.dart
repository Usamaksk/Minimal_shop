import 'package:flutter/material.dart';
import 'package:minimal_ecommorce_shop/components/my_button.dart';
import 'package:minimal_ecommorce_shop/models/product.dart';
import 'package:minimal_ecommorce_shop/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
  const CartPage ({super.key});

  //remove item from cart method
  void removeItemFromCart(BuildContext context,Product product) {
    //show a dialog box to ask user to confirm to remove from cart
    showDialog(context: context,
        builder: (context) => AlertDialog(
          content: const Text('Remove this item to your cart?'),
          actions: [
            // cancel button
            MaterialButton(onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            //yes button
            MaterialButton(onPressed: (){
              //pop dialog
              Navigator.pop(context);

              //add to cart
              context.read<Shop>().removeFromCart(product);
            },
              child: Text('yes'),)
          ],
        ));

  }
  //user pressed pay button
  void payButtonPressed(BuildContext context){
    showDialog(
      context: context,
      builder:(context) => const AlertDialog(
        content: Text("User want to pay! Connect this app to your payment backend"),
      )

    );

  }
  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Page'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
            ? const Center(child: Text("your cart is empty"))
          :ListView.builder(
              itemCount: cart.length,
                itemBuilder: (context, index) {
                  //get individual item in cart
                  final item = cart [index];

                  //return as a cart title UI
                  return ListTile(
                    title: Text(item.name),
                    subtitle:  Text(item.price.toStringAsFixed(2)),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => removeItemFromCart(context,item),
                    ),
                  );
                }
            ),
          ),
          //pay Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyButton(onTap: () => payButtonPressed(context), child:Text('Play Now')),
          )
        ],
      ),
    );
  }
}