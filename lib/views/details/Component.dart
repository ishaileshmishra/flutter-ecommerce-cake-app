

// Widget buildActionbarCakeDetails(BuildContext context) {
//   return Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         GestureDetector(
//           onTap: () => {Navigator.pop(context)},
//           child: Icon(
//             Icons.arrow_back,
//             size: 25,
//             color: Colors.red.shade300,
//           ),
//         ),
//         Row(
//           children: [
//             CircleAvatar(
//               backgroundColor: Colors.grey.shade300,
//               child: Icon(
//                 Icons.favorite_border,
//                 size: 25,
//                 color: Colors.red.shade300,
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             CircleAvatar(
//               backgroundColor: Colors.grey.shade300,
//               child: Icon(
//                 CupertinoIcons.share_up,
//                 color: Colors.red.shade300,
//                 size: 25,
//               ),
//             )
//           ],
//         )
//       ],
//     ),
//   );
// }

// Widget selectedWeightText(String string) {
//   return Container(
//       margin: EdgeInsets.only(left: 10),
//       padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.red.shade200, Colors.red.shade100],
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//           ),
//           borderRadius: BorderRadius.circular(2.0),
//           shape: BoxShape.rectangle,
//           border: Border.all(color: Colors.red.shade400)),
//       child: Text(string,
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)));
// }

// Widget weightText(String string) {
//   return Container(
//       margin: EdgeInsets.only(left: 10),
//       padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(2.0),
//           shape: BoxShape.rectangle,
//           border: Border.all(color: Colors.red.shade400)),
//       child: Text(string,
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)));
// }

// TextStyle mediumHeading() {
//   return TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
// }

// SizedBox vPutMargin() {
//   return SizedBox(height: 20);
// }

// TextField textField() {
//   return TextField(
//     decoration: new InputDecoration(
//       filled: true,
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.red.shade300, width: 1.0),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.red.shade200, width: 1.0),
//       ),
//       //hintText: 'Mobile Number',
//     ),
//   );
// }
