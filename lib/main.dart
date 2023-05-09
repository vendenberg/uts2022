import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<String> _numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wilasta Kurniawan'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        children: List.generate(12, (index) {
          Color color;
          switch (index) {
            case 0:
              color = Color.fromARGB(255, 187, 221, 218);
              break;
            case 1:
              color = Color.fromARGB(255, 144, 201, 195);
              break;
            case 2:
              color = Color.fromARGB(255, 105, 179, 171);
              break;
            case 3:
              color = Color.fromARGB(255, 81, 163, 153);
              break;
            case 4:
              color = Color.fromARGB(255, 65, 147, 135);
              break;
            case 5:
              color = Color.fromARGB(255, 59, 134, 123);
              break;
            case 6:
              color = Color.fromARGB(255, 59, 134, 123);
              break;
            case 7:
              color = Color.fromARGB(255, 59, 134, 123);
              break;
            case 8:
              color = Color.fromARGB(255, 30, 75, 64);
              break;
            case 9:
              color = Color.fromARGB(255, 205, 228, 203);
              break;
            case 10:
              color = Color.fromARGB(255, 174, 212, 170);
              break;
            case 11:
              color = Color.fromARGB(255, 144, 197, 137);
              break;
            default:
              color = Color.fromARGB(0, 0, 0, 0);
          }
          return Container(
            color: color,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _numbers[index],
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
