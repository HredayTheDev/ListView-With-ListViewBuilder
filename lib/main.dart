import 'package:flutter/material.dart';

void main() {
  // any preprocessing can be done here, such as determining a device location
  //
  // runApp is a Flutter function that runs your Flutter app
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> fruitList = [
    "Mango",
    "Apple",
    "Orange",
    "Grape",
    "Banana",
    "Coconut ",
    "Pineapple ",
    "Papaya ",
    "Mango ",
    "Guava ",
    "Lemon ",
    "Watermelon ",
    "Wood Apple ",
    "Almond ",
    "Black Currant "
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Using ListView Builder"),
      ),
      body: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                color: Colors.black,
                child: ListTile(
                  title: Center(
                    child: Text(
                      fruitList[index],style: TextStyle(
                        
                        
                        color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
