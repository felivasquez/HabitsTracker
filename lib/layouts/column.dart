import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(235, 201, 195, 135),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              "Welcome",
              style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 1, 67, 13)
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 207, 130, 75),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text("Get Started"),
            

          ),
        ],
      ),
    );
  }
}