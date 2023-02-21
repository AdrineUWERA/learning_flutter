import 'package:flutter/material.dart';
import './product_model.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: const MyHomePage(title: 'Nyirangarama Products'),
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
        title: Text(widget.title),
      ),
      body:
          // Center(
          //   child:
          GridView.builder(
        padding: EdgeInsets.all(10.0),
        shrinkWrap: true,
        itemCount: ProductModel.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          final product = ProductModel.products[index];
          return Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF04060F).withOpacity(0.05),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Card(
                elevation: 0,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Image.network(
                      product.productImageURL,
                      height: 100.0,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      product.productName,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '\RWF ${product.price.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(height: 5.0),
                  ],
                ),
              ));
        },
      ),
    );
    // );
  }
}
