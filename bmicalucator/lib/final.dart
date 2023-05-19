// import 'package:flutter/material.dart';

// const bottomcontainerheight = 80.0;
// const activecardcolor = Color(0xFF1D1E33);
// const bottomcontainercolor = Color(0xFFEB1555);

// class inputpage extends StatefulWidget {
//   const inputpage({super.key});

//   @override
//   State<inputpage> createState() => _inputpageState();
// }

// class _inputpageState extends State<inputpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("BMI CALUCATOR"),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: activecardcolor,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         color: activecardcolor,
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                   color: activecardcolor,
//                   borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         color: activecardcolor,
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     margin: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         color: activecardcolor,
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             color: bottomcontainercolor,
//             margin: EdgeInsets.only(
//               top: 10,
//             ),
//             width: double.infinity,
//             height: bottomcontainerheight,
//           )
//         ],
//       ),
//     );
//   }
// }