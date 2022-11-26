// import 'package:flutter/material.dart';

// void showBottomSheet(BuildContext context) => showModalBottomSheet(
//       enableDrag: false,
//       isDismissible: false,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(24),
//           topRight: Radius.circular(24),
//         ),
//       ),
//       barrierColor: Colors.orange.withOpacity(0.2),
//       context: context,
//       builder: (context) => Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//             leading: const Icon(Icons.share),
//             title: const Text('Share'),
//             onTap: () {
//               Navigator.of(context).pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.link),
//             title: const Text('Copy link'),
//             onTap: () => {},
//           ),
//         ],
//       ),
//     );
