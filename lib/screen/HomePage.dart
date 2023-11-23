// // import 'package:flutter/material.dart';
// // import 'package:project22/screen/drawar_screen/drawar_screen.dart';
// // import 'package:project22/screen/event_detail_screen/event_detail_screen.dart';
// // // Import other necessary files

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key}) : super(key: key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// //   Widget currentPage = EventDetailScreen(); // Initial page

// <<<<<<< HEAD
// //   void _setPage(Widget page) {
// //     setState(() {
// //       currentPage = page;
// //       Navigator.of(context).pop(); // Close the drawer after changing the page
// //     });
// //   }
// =======
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//         drawerEnableOpenDragGesture: true,
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child:  Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               MediaQuery.of(context).size.width > 800
//                   ? const Drawer()
//                   : Container(), // An empty container when the width is less than or equal to 800
//                const Expanded(child: GenerateEventScreen()),
//             ],
//           ),
// >>>>>>> 100d75aa038841f1faa1ad2f747603a9b9c026ab

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: _scaffoldKey,
// //       drawerEnableOpenDragGesture: true,
// //       body: Container(
// //         height: MediaQuery.of(context).size.height,
// //         width: MediaQuery.of(context).size.width,
// //         child: Row(
// //           mainAxisSize: MainAxisSize.max,
// //           children: [
// //             Expanded(child: CustomDrawers()),
// //             Expanded(
// //               flex: 4,
// //               child: currentPage,
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
