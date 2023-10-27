import 'package:flutter/material.dart';

void main() {
  runApp(NewsItems());
}

class NewsItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text('Teks 1',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          SizedBox(height: 20), // Jarak antara teks 1 dan teks 2
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text('Teks 2',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          SizedBox(height: 20), // Jarak antara teks 2 dan teks 3
          Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text('Teks 3',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
