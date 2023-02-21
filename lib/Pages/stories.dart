import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/menu.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        elevation: 0,
        backgroundColor: Color.fromRGBO(53, 66, 89, 1),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SizedBox(
                height: 90,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tougo",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Menu()));
                        },
                        icon: const Icon(Icons.menu),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/images/stories_3.png")),
                Text(
                  "Stories",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              height: 150,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Madakaripura-Blue-1_1.png",
                    scale: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          child: Text(
                            "Histories, East Java",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color.fromRGBO(115, 129, 153, 1)),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text("Air Terjun Madakaripura",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(53, 66, 89, 1))),
                        ),
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Text(
                              "LLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tristique dignissim consectetur. Donec scelerisque sapien non velit luctus tincidunt. Curabitur a gravida magna. In aliquam elit at ex maximus euismod. ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // breakk
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              height: 150,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Candi_jawi.png",
                    scale: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          child: Text(
                            "Histories, East Java",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color.fromRGBO(115, 129, 153, 1)),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text("Air Terjun Madakaripura",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(53, 66, 89, 1))),
                        ),
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Text(
                              "LLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tristique dignissim consectetur. Donec scelerisque sapien non velit luctus tincidunt. Curabitur a gravida magna. In aliquam elit at ex maximus euismod. ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // breakk
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              height: 150,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Gereja_Merah.png",
                    scale: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          child: Text(
                            "Histories, East Java",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color.fromRGBO(115, 129, 153, 1)),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text("Air Terjun Madakaripura",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(53, 66, 89, 1))),
                        ),
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Text(
                              "LLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tristique dignissim consectetur. Donec scelerisque sapien non velit luctus tincidunt. Curabitur a gravida magna. In aliquam elit at ex maximus euismod. ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // breakk
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              height: 150,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Pertirtaan_watugede.png",
                    scale: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          child: Text(
                            "Histories, East Java",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color.fromRGBO(115, 129, 153, 1)),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Text("Air Terjun Madakaripura",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(53, 66, 89, 1))),
                        ),
                        Expanded(
                          child: Container(
                            width: 200,
                            child: Text(
                              "LLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tristique dignissim consectetur. Donec scelerisque sapien non velit luctus tincidunt. Curabitur a gravida magna. In aliquam elit at ex maximus euismod. ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Text(
//   "Histories, East Java",
//   style: GoogleFonts.poppins(
//       fontWeight: FontWeight.w400,
//       fontSize: 8,
//       color: Color.fromRGBO(115, 129, 153, 1)),
// ),
// Text("Air Terjun Madakaripura",
//     style: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 16,
//         color: Color.fromRGBO(53, 66, 89, 1))),

// SizedBox(
//   height: 150,
//   child: ListTile(
//       title: Text(
//         "Histories, East Java",
//         style: GoogleFonts.poppins(
//             fontWeight: FontWeight.w400,
//             fontSize: 8,
//             color: Color.fromRGBO(115, 129, 153, 1)),
//       ),
//       subtitle: Text("Air Terjun Madakaripura",
//           style: GoogleFonts.poppins(
//               fontWeight: FontWeight.w600,
//               fontSize: 16,
//               color: Color.fromRGBO(53, 66, 89, 1))),
//       isThreeLine: true),
// ),
