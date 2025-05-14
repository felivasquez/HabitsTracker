import 'package:flutter/material.dart';
import 'package:habitstracker/login-signin/login.dart';


class ColumnExample extends StatefulWidget {
  const ColumnExample({super.key});
  

  @override
  State<ColumnExample> createState() => _ColumnExample();
}

class _ColumnExample extends State<ColumnExample> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }


  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xecdfccb3),
            height: double.infinity,
            width: double.infinity,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 1),
                  child: Text(
                    "Habits\nTracker",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'Riveruta',
                      fontWeight: FontWeight.bold,
                      height: 0.9,
                      color: Color.fromRGBO(37, 67, 54, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 1),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginWidget()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(218, 131, 89, 1),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Get Started"),
                  ),
                ),
              ],
            ),
          ),
          // Círculo superior Derecho
          Positioned(
            top: -170,
            right: -180,
            child: Container(
              width: 420,
              height: 407,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(165,182,141,0.5), // color verde claro
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Círculo superior izquierdo
          Positioned(
            top: -275,
            left: -190,
            child: Container(
              width: 421,
              height: 407.33,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(165,182,141,1), // color verde claro
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Círculo inferior derecho
          Positioned(
            bottom: -320,
            left: -200,
            child: Container(
              width: 500,
              height: 500,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(165,182,141,0.5), // color verde claro
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Círculo superior izquierdo
          Positioned(
            bottom: -170,
            right: -190,
            child: Container(
              width: 421,
              height: 407.33,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(165,182,141,1), // color verde claro
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

