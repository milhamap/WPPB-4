import 'package:flutter/material.dart';
import 'package:state_management/done_tourism_list.dart';
import 'package:state_management/models/tourism_place.dart';
import 'package:state_management/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Wisata Kudus',
          style: TextStyle(
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneTourismList();
                })
              );
            }
          )
        ],
      ),
      body: TourismList(),
    );
  }
}

// Widget listItem(TourismPlace place){
//   return Card(
//     color: isDone ? Colors.white60 : Colors.white,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Expanded(
//           child: Image.asset(
//             place.imageMain,
//             width: 100,
//             height: 80,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Text(
//                   place.name,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(place.location)
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }