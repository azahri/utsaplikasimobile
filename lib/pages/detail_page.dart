import 'package:flutter/material.dart';
import 'package:utsaplikasimobile/models/sepakbola.dart';

class DetailPage extends StatelessWidget {
  final SepakBola pemain;

  const DetailPage({super.key, required this.pemain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pemain.namaPemain),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO PEMAIN (agak besar dan proporsional)
            Center(
              child: Container(
                width: 320, // agak besar
                height: 260, // proporsional
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.18),
                      blurRadius: 14,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(pemain.fotoUrl, fit: BoxFit.cover),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // NAMA PEMAIN
            Text(
              pemain.namaPemain,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            // DETAIL PEMAIN
            _buildDetail("Nomor Punggung", pemain.nomorPunggung.toString()),
            _buildDetail("Posisi", pemain.posisi),
            _buildDetail("Klub", pemain.klub),
          ],
        ),
      ),
    );
  }

  // WIDGET DETAIL
  Widget _buildDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Expanded(child: Text(value, style: const TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}
