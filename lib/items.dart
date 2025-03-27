import 'package:flutter/material.dart';
import 'details_screen.dart'; // Import the details screen

class Items extends StatelessWidget {
  const Items({super.key});

  void navigateToDetails(BuildContext context, String name, String description, int price, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          name: name,
          description: description,
          price: price,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Navigation'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildItem(context, 'Pixel 1', 'Google AI-powered phone!', 1000, Colors.blueAccent),
              buildItem(context, 'Laptop', 'High-performance laptop.', 2000, Colors.green),
              buildItem(context, 'Tablet', 'Perfect for media and work.', 1500, Colors.yellow),
              buildItem(context, 'Pen Drive', 'Portable storage device.', 500, Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, String name, String description, int price, Color color) {
    return GestureDetector(
      onTap: () => navigateToDetails(context, name, description, price, color),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 150,
              color: color,
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(name, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    Text(description),
                    Text('Price: \$$price'),
                    Row(
                      children: List.generate(3, (index) => Icon(Icons.star, color: Colors.yellow)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
