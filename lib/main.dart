
import 'package:flutter/material.dart';
import 'package:minimal_ecommorce_shop/models/shop.dart';
import 'package:minimal_ecommorce_shop/pages/cart_page.dart';
import 'package:minimal_ecommorce_shop/shop%20page/shop_page.dart';
import 'package:minimal_ecommorce_shop/theme/light_mode.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce app',
      debugShowCheckedModeBanner: false,
      home:IntroPage(),
      theme: lightMode,
      routes:{
        '/intro_page': (context) => const IntroPage(),
        '/shop_page' : (context) => const ShopPage(),
        '/cart_page' : (context) => const CartPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Container(

      )
    );
  }
}
