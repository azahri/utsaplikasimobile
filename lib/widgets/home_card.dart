import 'package:flutter/material.dart';
import 'package:utsaplikasimobile/models/sepakbola.dart';
import 'package:utsaplikasimobile/pages/detail_page.dart';

class HomeCard extends StatelessWidget {
  final SepakBola pemain;

  const HomeCard({super.key, required this.pemain});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 243, 239, 239),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 3,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailPage(pemain: pemain)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // FOTO PEMAIN
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  pemain.fotoUrl,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 16),

              // NAMA + POSISI + CLUB
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pemain.namaPemain,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      pemain.posisi,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      pemain.klub,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
