import 'package:flutter/material.dart';
import 'package:minimal_ecommorce_shop/components/my_button.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(
              height: 25,
            ),

            //title
            Text('WiredWave Shop',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(height: 10,),

            //subtitle
            Text('Premium Quality Products',
              style:TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25,),
            //Button
            MyButton(onTap: () => Navigator.pushNamed(context,'/shop_page'),
                child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}