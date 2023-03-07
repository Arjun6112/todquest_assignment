import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toqquest/widgets/card_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[300],
          title: Text('TodQuest',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CardTile(
                        title: "Breakfast",
                        ing: "Bread,Peanut Butter, Apple",
                        calories: "575");
                  },
                  itemCount: 10,
                )),
          ],
        ),
      ),
    );
  }
}
