import 'package:flutter/material.dart';
import 'package:store/screens/home_page.dart';
import 'package:store/screens/my_home_page.dart';
import 'package:store/screens/update_product_page.dart';
// import 'dart:developer';
// import 'package:http/http.dart' as http;

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => const UpdateProductPage(),
        MyHomePage.id: (context) => const MyHomePage(
              title: 'MyHomePage',
            ),
      },
      initialRoute: HomePage.id,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
