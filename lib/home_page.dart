import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void _decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  void _increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? "Lotado" : "Pode entrar!",
                style: TextStyle(
                  color: isFull ? Colors.red : Colors.white,
                  fontSize: 40.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                    fontSize: 100.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : _decrement,
                    style: TextButton.styleFrom(
                      backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
                      fixedSize: Size(25.w, 15.h),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      "Saiu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  TextButton(
                    onPressed: isFull ? null : _increment,
                    style: TextButton.styleFrom(
                      backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                      fixedSize: Size(25.w, 15.h),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      "Entrou",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0.sp,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
