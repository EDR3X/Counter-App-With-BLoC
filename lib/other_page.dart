import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Other Page",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "hello there",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            heroTag: "Increment",
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.remove),
            heroTag: "Decrement",
          ),
        ],
      ),
    );
  }
}
