import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Container(
          padding: EdgeInsets.only(left: 10),
          height: height * .01,
          width: height * .01,
          color: Colors.white,
          child: Image.network('https://cdn3.pixelcut.app/1/3/profile_picture_1728ecf2bd.jpg'),
        ),
        title: Text('Hello, Hasib', style: GoogleFonts.lato()),
        actions: [
          Container(
            height: height * .1,
            width: height * .1,
            color: Colors.white,
            child: Icon(Icons.notification_add),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('')
        ],
      ),
    );
  }
}
