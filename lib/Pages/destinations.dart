import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/menu.dart';

class Destinations extends StatelessWidget {
  const Destinations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(context),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/destination_page/destination.png",
            height: 300,
          ),
          Center(
              child: Text(
            "Destination",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 32),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/destination_page/central-java.jpeg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Text(
              "Center Java",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/destination_page/east-java.jpeg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Text(
              "East Java",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/destination_page/west-java.jpeg",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Text(
              "West Java",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ],
      ),
    );
    ;
  }

  AppBar TopBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 60,
      elevation: 0,
      backgroundColor: Color.fromRGBO(122, 150, 199, 1.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(122, 150, 199, 1.0),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
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
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

    // List<String> imageList = [
    //   "destination",
    //   "east java",
    //   "central java",
    //   "west java",
    // ];
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // return Scaffold(
    //     appBar: TopBar(context),
    //     body: Padding(
    //       padding: EdgeInsets.symmetric(horizontal: 20),
    //       child: SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             SizedBox(
    //               height: height * .35,
    //               child: ListView.builder(
    //                   shrinkWrap: true,
    //                   itemCount: imageList.length,
    //                   scrollDirection: Axis.horizontal,
    //                   itemBuilder: (BuildContext context, int index) {
    //                     GestureDetector(
    //                       onTap: () {},
    //                       child: Padding(
    //                         padding: EdgeInsets.symmetric(
    //                             horizontal: 10, vertical: 20),
    //                         child: Container(
    //                           height: height * .3,
    //                           width: width * .7,
    //                           decoration: BoxDecoration(
    //                               image: DecorationImage(
    //                                   image: AssetImage(
    //                                       "assets/images/Destination_pages/destination.jpeg"),
    //                                   fit: BoxFit.cover),
    //                               borderRadius: BorderRadius.circular(20)),
    //                           child: Column(
    //                             mainAxisAlignment: MainAxisAlignment.end,
    //                             crossAxisAlignment: CrossAxisAlignment.end,
    //                             children: [
    //                               ListTile(
    //                                 title: Text(""),
    //                               )
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     );
    //                   }),
    //             )
    //           ],
    //         ),
    //       ),
    //     ));