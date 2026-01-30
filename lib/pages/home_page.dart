import 'package:flutter/material.dart';
import 'package:utsaplikasimobile/models/dummy_data.dart';
import 'package:utsaplikasimobile/widgets/home_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pemain = dummydata;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: pemain.length,
          itemBuilder: (context, index) {
            return HomeCard(pemain: pemain[index]);
          },
        ),
      ),
    );
  }

  
}