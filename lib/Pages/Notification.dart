import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notif_tou extends StatelessWidget {
  const Notif_tou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(188, 206, 236, 1),
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.white, size: 30),
      //   toolbarHeight: 75,
      //   title: Text(
      //     'Menu',
      //     style: GoogleFonts.poppins(
      //       color: Colors.white,
      //       fontSize: 24,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Color.fromRGBO(188, 206, 236, 1),
      //   centerTitle: true,
      // ),
      // body: ListView(),

    );

//     Widget ListView() {
//       return ListView.separated(
//         itemBuilder: (context, index){
//         return listViewItem(index);
//       }, 
//       separatorBuilder: (context, index){
//         return Divider(height: 0);
//       }, 
//       itemCount: 15);
//     }


// `Widget listViewItem(int index){
//   return Container(
//     margin: EdgeInsets.only(left: 10),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         message(index),

//       ],
//     ),
//   );
// };


//   Widget message(int index){
//     double textSize = 14;
//     return Container(
//       child: RichText(
//         maxLines: 3,
//         overflow: TextOverflow.ellipsis,
//         text: TextSpan(
//           text: "Message",
//           style: TextStyle(
//             fontSize: textSize,
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//           children: [
            
//           ]
//         ),
//       ),
//     );
//   }

  }
}
