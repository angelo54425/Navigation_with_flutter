import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final Color color;

  const DetailsScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: color, // Dynamic color
            alignment: Alignment.center,
            child: Text(
              name, // Dynamic name
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  name, // Dynamic name
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  description, // Dynamic description
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Price: \$$price', // Dynamic price
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                // Rating stars (remains the same)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
