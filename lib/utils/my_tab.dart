import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String name;

  const MyTab({super.key, required this.iconPath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              color: Colors.grey[600],
              width: 24, // Ajusta el tamaño de la imagen
              height: 24,
            ),
            
            Text(
              name,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
