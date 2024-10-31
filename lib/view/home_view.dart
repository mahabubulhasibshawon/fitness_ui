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
          padding: const EdgeInsets.only(left: 10),
          height: height * .01,
          width: height * .01,
          color: Colors.white,
          child: Image.network(
              'https://cdn3.pixelcut.app/1/3/profile_picture_1728ecf2bd.jpg'),
        ),
        title: Text('Hello, Hasib',
            style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
        actions: [
          Container(
            height: height * .1,
            width: height * .1,
            color: Colors.white,
            child: const Icon(Icons.notification_add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tracking \nyour heart',
              style: GoogleFonts.poppins(
                  fontSize: 55, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10
            ),
            Row(
              children: [
                Container(
                  height: width * .55,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color(0xffD0E9BC),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text(
                        '86%',
                        style: GoogleFonts.poppins(fontSize: 50),
                      ),
                      Text(
                        'battery%',
                        style: GoogleFonts.poppins(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: (width * .5) * .65,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.electric_bolt,
                                size: 40,
                              ),
                              Icon(
                                Icons.menu,
                                color: Color(0xffD0E9BC),
                                size: 105,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        height: width * .55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://t4.ftcdn.net/jpg/08/05/16/07/360_F_805160765_tRFH9pZXaqBB9uzfh3qtEzvZKAJMNtn0.jpg',
                            fit: BoxFit.cover,
                          ),
                        )))
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: height * .2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffbae4ed),),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/realme-band.png'
                      ),
                      Column(
                        children: [
                          Text('Customize\nyour device',style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 2)
                                ),
                                child: const Icon(Icons.cell_tower_outlined),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: height * .1,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.yellow[200], // Background color
                borderRadius: BorderRadius.circular(30.0), // Rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Left Icon with circle outline
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.watch, // Adjust icon as needed
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10), // Space between icon and text
                  // Center text with arrows
                  const Row(
                    children: [
                      Text(
                        'Connect',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward, // Arrow icon
                        color: Colors.black,
                        size: 18,
                      ),
                      Icon(
                        Icons.arrow_forward, // Second arrow
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10), // Space between text and right icon
                  // Right Icon with circle outline
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.watch, // Adjust icon as needed
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
