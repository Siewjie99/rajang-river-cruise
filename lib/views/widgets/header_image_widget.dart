
import 'package:flutter/material.dart';

class HeaderImageWidget extends StatelessWidget {
  const HeaderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          height: 220,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1500375592092-40eb2168fd21?w=1200',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) {
                  return Container(
                    color: Colors.teal,
                    child: const Icon(
                      Icons.directions_boat,
                      size: 90,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black87,
                    ],
                  ),
                ),
                child: const Text(
                  'RAJANG RIVER • SIBU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
