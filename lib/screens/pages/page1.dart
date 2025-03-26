import 'package:flutter/material.dart';

//page 1
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(
            'asset/images/prm1.jpg',
            width: double.infinity,
            height: 400,
            fit: BoxFit.contain,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return child;
            },
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Error loading image: $error');
              return Container(
                width: double.infinity,
                height: 400,
                color: Colors.grey[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_not_supported,
                        size: 50, color: Colors.grey[600]),
                    const SizedBox(height: 10),
                    const Text(
                      'Image not found',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
