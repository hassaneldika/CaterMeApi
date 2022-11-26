// import 'package:flutter/material.dart';

// Widget widgetFloationgAction(BuildContext context, String text1,
//   String text2,
//   VoidCallback onTap,
//   IconData? iconadd,
//   double fontSize,
//   )
//   {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.15,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(35),
//             color: const Color(0xff3E5521)),
//         child: Row(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 20, right: 10),
//               child: Icon(
//                 Icons.calendar_month_outlined,
//                 color: Colors.white,
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               // ignore: prefer_const_literals_to_create_immutables
//               children: [
//                 Text( 
//                   text1,
//                   style: TextStyle(color: Colors.white, fontSize:fontSize),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Text( 
//                     text2,
//                     style: TextStyle(color: Colors.white, fontSize: fontSize),
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             InkWell(
//               onTap: onTap,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30, right: 20),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: Colors.white),
//                   child: Icon(
//                     iconadd,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }



import 'package:flutter/material.dart';

Widget buildFloationg(BuildContext context,   String text1,
  String text2,
  VoidCallback onTap,
  IconData? iconadd,
  )
  {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color(0xff3E5521)),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text( 
                  text1,
                  style: const TextStyle(color: Colors.white, fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text( 
                    text2,
                    style: const TextStyle(color: Colors.white, fontSize: 9),
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Icon(
                    iconadd,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }