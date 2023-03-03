
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidgets(),
    );
  }
}

//SHOW DIALOG
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: ElevatedButton(
//             child: Text('Show About Dialog'),
//             onPressed: () {
//               showDialog(
//                   context: context,
//                   builder: (context) => AboutDialog(
//                     applicationIcon: FlutterLogo(),
//                     applicationLegalese: 'Legalese',
//                     applicationName: 'Flutter App',
//                     applicationVersion: 'Version 1.0.0',
//                     children: [
//                       Text('This is a text created by Flutter Map')
//                     ],
//                   )
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//SHOW DIALOG COMPLETE

//ABOUT LIST TILE
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AboutListTile(
//           icon: Icon(Icons.info),
//           applicationIcon: FlutterLogo(),
//           applicationLegalese: 'Legalese',
//           applicationName: 'Flutter App',
//           applicationVersion: 'Version 1.0.0',
//           aboutBoxChildren: [
//             Text('This is a text created by Flutter Map')
//           ],
//         ),
//       ),
//     );
//   }
// }
//ABOUT LIST TILE COMPLETE

//ABSORB POINTER
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 SizedBox(
//                   height: 100,
//                   width: 200,
//                   child: ElevatedButton(
//                       onPressed: () {},
//                       child: null,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 200,
//                   width: 100,
//                   child: AbsorbPointer(
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: null,
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue.shade200,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//     ));
//   }
// }

//ALERT DIALOG
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: ElevatedButton(
//               child: Text('Alert Dialog'),
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       actions: [
//                         TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('Close')
//                         ),
//                       ],
//                       title: Text('Flutter Map'),
//                       contentPadding: EdgeInsets.all(20),
//                       content: Text('This is alert dialog'),
//                     )
//                 );
//               },
//             ),
//           ),
//         )
//     );
//   }
// }
//ALERT DIALOG COMPLETE

//ALIGN
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 120,
//           width: double.infinity,
//           color: Colors.blueGrey,
//           child: Align(
//             alignment: Alignment.topRight,
//             child: FlutterLogo(
//               size: 60,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//ALIGN COMPLETE

//ANIMATED ALIGN(NOT WORKING)
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool selected = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         setState(() {
//           selected = !selected;
//         });
//       },
//       child: Center(
//         child: Container(
//           width: double.infinity,
//           height: 250,
//           color: Colors.grey,
//           child: AnimatedAlign(
//             alignment: selected ? Alignment.topRight : Alignment.topRight,
//             duration: Duration(seconds: 1),
//             curve: Curves.fastOutSlowIn,
//             child: FlutterLogo(size: 50,),
//           ),
//         ),
//       ),
//     );
//   }
// }
//ANIMATED ALIGN COMPLETE

//ANIMATED CONTAINER
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> with TickerProviderStateMixin{
//   bool selected = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selected = !selected;
//         });
//       },
//       child: Center(
//         child: AnimatedContainer(
//           width: selected ? 200 : 100,
//           height: selected ?100 :200,
//           color: selected ? Colors.blueGrey : Colors.white,
//           curve: Curves.fastOutSlowIn,
//           alignment: selected ? Alignment.center : Alignment.topCenter,
//           duration: Duration(seconds: 2),
//           child: FlutterLogo(size: 75,),
//         ),
//     ),
//     );
//   }
// }
//ANIMATED CONTAINER COMPLETE

//ANIMATED CROSS FADE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _bool = true;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: 100,
//           width: double.infinity,
//         ),
//         TextButton(
//             onPressed: () {
//               setState(() {
//                 _bool = !_bool;
//               });
//             },
//             child: Text("Switch"),
//         ),
//         AnimatedCrossFade(
//             firstChild: FlutterLogo(size: 100,),
//             secondChild: FlutterLogo(size: 700,),
//             crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//             duration: Duration(seconds: 2))
//       ],
//     );
//   }
// }
//ANIMATED CROSS FADE COMPLETE

//ANIMATED DEFAULT TEXT STYLE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _first = true;
//   double _fontsize = 60;
//   Color _color = Colors.blue;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             height: 120,
//             child: AnimatedDefaultTextStyle(
//               duration: Duration(milliseconds: 300),
//               style: TextStyle(
//                 fontSize: _fontsize,
//                 color: _color,
//                 fontWeight: FontWeight.bold
//               ),
//               child: Text('Flutter'),
//             ),
//           ),
//           TextButton(
//               onPressed: () {
//                 setState(() {
//                   _fontsize = _first ? 90 : 60;
//                   _color = _first ? Colors.blue : Colors.red;
//                   _first = !_first;
//                 });
//               },
//               child: Text('Switch'),
//           )
//         ],
//       ),
//     );
//   }
// }
//ANIMATED DEFAULT TEXT STYLE WIDGET COMPLETE

//ANIMATED ICON(NOT WORKING)
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> with TickerProviderStateMixin{
//   bool _isPlay = false;
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     _controller = AnimationController(
//       duration: Duration(seconds: 1),
//         vsync: this
//     );
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//           if(_isPlay = false) {
//             _controller.forward();
//             _isPlay = true;
//           }
//           else {
//             _controller.reverse();
//             _isPlay = false;
//           }
//         },
//         child: AnimatedIcon(
//           icon: AnimatedIcons.play_pause,
//           progress: _controller,
//           size: 100,
//         ),
//       ),
//
//     );
//   }
// }
//ANIMATED ICON COMPLETE

//ANIMATED LIST
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   final _items = [];
//   final GlobalKey<AnimatedListState> _key = GlobalKey();
//
//   void _addItem() {
//     _items.insert(0, "Item ${_items.length + 1}");
//     _key.currentState!.insertItem(
//       0,
//       duration: Duration(seconds: 1),
//     );
//   }
//
//   void _removeItem(int index) {
//     _key.currentState!.removeItem(
//         index,
//         (_,animation) {
//           return SizeTransition(
//               sizeFactor: animation,
//               child: Card(
//                 margin: EdgeInsets.all(10),
//                 color: Colors.red,
//                 child: ListTile(
//                   title: Text(
//                       'Deleted',
//                       style: TextStyle(fontSize: 24),
//                   ),
//                 ),
//               ),
//           );
//         },
//         duration: Duration(milliseconds: 300),
//     );
//     _items.removeAt(index);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           body: Column(
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               IconButton(
//                   onPressed: _addItem,
//                   icon: Icon(Icons.add)
//               ),
//               Expanded(
//                   child: AnimatedList(
//                     key: _key,
//                     initialItemCount: 0,
//                     padding: EdgeInsets.all(10),
//                     itemBuilder: (context,index,animation) {
//                         return SizeTransition(
//                           key: UniqueKey(),
//                             sizeFactor: animation,
//                           child: Card(
//                             margin: EdgeInsets.all(10),
//                             color: Colors.orange,
//                             child: ListTile(
//                               title: Text(
//                                   _items[index],
//                                   style: TextStyle(
//                                     fontSize: 24
//                                   ),
//                               ),
//                               trailing: IconButton(
//                                 icon: Icon(Icons.delete),
//                                 onPressed: () {
//                                   _removeItem(index);
//                                 },
//                               ),
//                             ),
//                           ),
//                         );
//                     },
//                   )
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
//ANIMATED LIST COMPLETE

//ANIMATED OPACITY
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   double opacityLevel = 1.0;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           AnimatedOpacity(
//               opacity: opacityLevel,
//               duration: Duration(seconds: 2),
//               child: FlutterLogo(size: 50,),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   opacityLevel = opacityLevel == 0 ? 1 : 0;
//                 });
//               },
//               child: Text('Fade Logo')
//           )
//         ],
//       ),
//     );
//   }
// }
//ANIMATED OPACITY COMPLETE

//ANIMATED PADDING
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   double padValue = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.orangeAccent
//             ),
//               onPressed:() {
//                 setState(() {
//                   padValue = padValue == 0.0 ? 100.0 : 0.0;
//                 });
//               },
//               child: Text('Chnage padding')
//           ),
//           Text("Padding = $padValue"),
//           AnimatedPadding(
//               padding: EdgeInsets.all(padValue),
//               duration: Duration(seconds: 2),
//               curve: Curves.easeInOut,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height /4,
//                 color: Colors.orangeAccent,
//               ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//ANIMATED PADDING COMPLETE

//ANIMATED PHYSICAL MODEL
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _isFlat = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             AnimatedPhysicalModel(
//                 child: SizedBox(
//                   height: 120,
//                   width: 120,
//                   child: Icon(Icons.android),
//                 ),
//                 shape: BoxShape.rectangle,
//                 curve: Curves.fastOutSlowIn,
//                 elevation: _isFlat ? 0 : 6,
//                 color: Colors.white,
//                 shadowColor: Colors.black,
//                 duration: Duration(milliseconds: 500),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _isFlat  = !_isFlat;
//                   });
//                 },
//                 child: Text('Click')
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//ANIMATED PHYSICAL MODEL COMPLETE

//ANIMATED ROTATION
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   double turns = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//               padding: EdgeInsets.all(50),
//             child: AnimatedRotation(
//               turns: turns,
//               duration: Duration(seconds: 1),
//               child: FlutterLogo(size: 100,),
//             ),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   turns += 1 / 4 ;
//                 });
//               },
//               child: Text('Rotate logo'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.orangeAccent
//               ),
//           )
//         ],
//       ),
//     );
//   }
// }
//ANIMATED ROTATION COMPLETE

//ANIMATED SIZE(NOT WORKING)
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   double _size = 300;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _size = _size == 300 ? 100 : 300 ;
//         });
//       },
//       child: Container(
//         color: Colors.white,
//         child: AnimatedSize(
//           curve: Curves.easeIn,
//           duration: Duration(seconds: 1),
//           child: FlutterLogo(
//             size: _size,
//           ),
//         ),
//       ),
//     );
//   }
// }
//ANIMATED SIZE COMPLETE

//ANIMATED SWITCHER
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   double _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedSwitcher(
//                 duration: Duration(milliseconds: 500),
//                 child: Text(
//                   '$_count',
//                   style: TextStyle(
//                     fontSize: 40,
//                   ),
//                   key: ValueKey(_count),
//                 ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _count += 1;
//                   });
//                 },
//                 child: Text('Add'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//ANIMATED SWITCHER COMPLETE

//AUTO COMPLETE
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   static const List<String> listItems = [
//     'apple',
//     'banana',
//     'melon',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//           child: Autocomplete<String>(
//             optionsBuilder: (TextEditingValue textEditingValue) {
//               if(textEditingValue.text == '') {
//                 return Iterable.empty();
//               }
//               return listItems.where((String item) {
//                 return item.contains(textEditingValue.text.toLowerCase());
//               });
//             },
//             onSelected: (String item) {
//                 print('The $item was selected');
//             },
//           ),
//         ),
//     );
//   }
// }
//AUTO COMPLETE COMPLETE

//BACKDROP FILTER
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Text(
//                 '0' * 10000,
//                 style: TextStyle(
//                   color: Colors.pink
//                 ),
//             ),
//             Center(
//               child: ClipRect(
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(
//                     sigmaX: 4.0,
//                     sigmaY:4.0,
//                   ),
//                   child: Container(
//                     alignment: Alignment.center,
//                     width: 250,
//                     height: 250,
//                     child: Text('Blur'),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//BACKDROP FILTER COMPLETE

//BANNER
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           margin: EdgeInsets.all(10),
//           child: ClipRect(
//             child: Banner(
//               message: '25% off',
//               location: BannerLocation.topEnd,
//               color: Colors.red,
//               child: Container(
//                 color: Colors.blueGrey,
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       FlutterLogo(size: 250,),
//                       SizedBox(height: 10,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Flutter Course',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.orangeAccent,
//                             ),
//                               onPressed: () {},
//                               child: Text('Get Now')
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//BANNER COMPLETE

//BASELINE
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Container(
//             height: 200,
//             width: 200,
//             color: Colors.orangeAccent,
//             child: Baseline(
//               baseline: 50,
//               baselineType: TextBaseline.alphabetic,
//               child: FlutterLogo(size: 50,),
//             ),
//           ),
//         )
//     );
//   }
// }
//BASELINE COMPLETE

//BLOCK SEMANTICS(NOT WORKING)
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool isShow = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: SizedBox(
//         width: 500,
//         height: double.infinity,
//         child: Column(
//           children: [
//             OutlinedButton(
//                 onPressed: () {
//                   setState(() {
//                     isShow = true;
//                   });
//                 },
//                 child: Text('Click')
//             ),
//             if(isShow) {
//               BlockSemantics(
//                 blocking: isShow,
//                 child: Card(
//                   color: Colors.orangeAccent,
//                   child: SizedBox(
//                     width: 200,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text('This is a card'),
//                         TextButton(
//                           onPressed: () {
//                             setState(() {
//                               isShow = false;
//                             });
//                           },
//                           child: Text('Close'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             }
//           ],
//         ),
//       ),
//     );
//   }
// }
//BLOCK SEMANTICS

//BOTTOM NAVIGATION BAR
class MyWidgets extends StatefulWidget {
  const MyWidgets({Key? key}) : super(key: key);

  @override
  State<MyWidgets> createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  int _currentIndex = 0 ;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'name',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'menu',
              icon: Icon(Icons.menu)
          ),
          BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}
//BOTTOM NAVIGATION BAR COMPLETE


//BOTTOM SHEET
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Modal Bottom Sheet'),
//           onPressed: () {
//             showModalBottomSheet(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return SizedBox(
//                     height: 400,
//                     child: Center(
//                       child: ElevatedButton(
//                         child: Text('close'),
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                     ),
//                   );
//                 }
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//BOTTOM SHEET COMPLETE

//BUILDER
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: myWidget(),
//     );
//   }
// }
//
// myWidget() {
//   return Builder(
//     builder: (BuildContext context) {
//       return Text(
//         'Text With theme',
//         style: Theme.of(context).textTheme.displayLarge,
//       );
//     },
//   );
// }
//BUILDER COMPLETE

//CARD
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Card(
//             elevation: 20,
//             color: Colors.orangeAccent,
//             child: Padding(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     height: 8,
//                   ),
//                     Text(
//                       'This is flutter card',
//                     ),
//                     TextButton(
//                         onPressed: () {},
//                         child: Text('Press'))
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//CARD COMPLETE

//CHECKBOX
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool? isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(f
//         child: Center(
//           child: Checkbox(
//             value: isChecked,
//             activeColor: Colors.orangeAccent,
//             onChanged: (newValue) {
//               setState(() {
//                 isChecked = newValue!;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//CHECKBOX COMPLETE

//CHECKBOX LIST TILE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CheckboxListTile(
//           title: Text('Checkbox list tile'),
//           value: _isChecked,
//           onChanged: (bool? newValue) {
//             setState(() {
//               _isChecked = newValue!;
//             });
//           },
//           activeColor: Colors.orange,
//           // tileColor: Colors.black12,
//           checkColor: Colors.white,
//           subtitle: Text('This is a subtitle'),
//           controlAffinity: ListTileControlAffinity.leading,
//         ),
//       ),
//     );
//   }
// }
//CHECKBOX LIST TILE COMPLETE

//CHIP
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Chip(
//           label: Text('This is a flutter chip'),
//           onDeleted: () {
//             debugPrint('Do Something');
//           },
//         ),
//       ),
//     );
//   }
// }
//CHIP COMPLETE

//CHOICE CHIP
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ChoiceChip(
//           label: Text('This is a choice chip'),
//           selected: isSelected,
//           selectedColor: Colors.orangeAccent,
//           onSelected: (newState) {
//             setState(() {
//               isSelected = newState;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
//CHOICE CHIP COMPLETE

//CIRCULAR PROGRESS INDICATOR
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(
//           backgroundColor: Colors.grey,
//           color: Colors.orangeAccent,
//         ),
//       ),
//     );
//   }
// }
//CIRCULAR PROGRESS INDICATOR COMPLETE

//CUPERTINO ACTIVITY INDICATOR
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoActivityIndicator(
//       radius: 50,
//       color: Colors.pink,
//     );
//   }
// }
//CUPERTINO ACTIVITY INDICATOR COMPLETE

//CUPERTINO ALERT DIALOG
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//         child: Center(
//           child: CupertinoButton(
//             onPressed: () {
//               showCupertinoDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return CupertinoAlertDialog(
//                       title: Text('Alert'),
//                       content: Text('This is flutter app'),
//                       actions: <CupertinoDialogAction>[
//                         CupertinoDialogAction(
//                             child: Text('No'),
//                             isDestructiveAction: true,
//                           onPressed: () {
//                               Navigator.of(context).pop();
//                           },
//
//                         ),
//                         CupertinoDialogAction(
//                           child: Text('Yes'),
//
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                         },
//                         ),
//                       ],
//                     );
//                   }
//               );
//             },
//             child: Text('Cupertino Alert Dialog'),
//           ),
//         )
//     );
//   }
// }
//CUPERTINO ALERT DIALOG COMPLETE

//SIMPLE DIALOG
class MyWidgets extends StatelessWidget {
  const MyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: Text('Simple Dialog'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SimpleDialog(
                      title:const Text('GeeksforGeeks'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () { },
                          child:const Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () { },
                          child: const Text('Option 2'),
                        ),
                      ],
                    );
                  }
              );
            },
          ),
        ),
      ),
    );
  }
}

//SIMPLE DIALOG COMPLETE

//CUPERTINO CONTEXT MENU
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SizedBox(
//           width: 100,
//           height: 100,
//           child: CupertinoContextMenu(
//             child: FlutterLogo(),
//             actions: [
//               CupertinoContextMenuAction(
//                   child: Text(
//                     'Action one'
//                   ),
//                 onPressed: () {
//                     Navigator.pop(context);
//                 },
//               ),
//               CupertinoContextMenuAction(
//                 child: Text(
//                     'Action two'
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//CUPERTINO CONTEXT MENU COMPLETE

//CUPERTINO SWITCH
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _lights = false;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Switch.adaptive(
//         value: _lights,
//         onChanged: (bool value) {
//           setState(() {
//             _lights = value;
//           });
//         },
//       ),
//     );
//   }
// }
//CUPERTINO SWITCH COMPLETE

//DATA TABLE
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TextStyle titles = TextStyle(
//       fontStyle: FontStyle.italic,
//       fontWeight: FontWeight.bold,
//       color: Colors.pink
//     );
//     return Scaffold(
//       body: SafeArea(
//         child: DataTable(
//             columns: [
//               DataColumn(
//                   label: Text(
//                       'Name',
//                       style: titles,
//                   )
//               ),
//               DataColumn(
//                   label: Text(
//                     'Age',
//                     style: titles,
//                   )
//               ),
//               DataColumn(
//                   label: Text(
//                     'Color',
//                     style: titles,
//                   )
//               ),
//             ],
//             rows: [
//               DataRow(
//                   cells: [
//                     DataCell(Text('Max')),
//                     DataCell(Text('20')),
//                     DataCell(Text('red')),
//                   ]
//               ),
//               DataRow(
//                   cells: [
//                     DataCell(Text('Max')),
//                     DataCell(Text('20')),
//                     DataCell(Text('red')),
//                   ]
//               ),
//               DataRow(
//                   cells: [
//                     DataCell(Text('Max')),
//                     DataCell(Text('20')),
//                     DataCell(Text('red')),
//                   ]
//               )
//             ]
//         ),
//       ),
//     );
//   }
// }
//DATA TABLE COMPLETE

//DATE PICKER
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   DateTime selectedDate = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
//             ElevatedButton(
//                 onPressed: () async{
//                   final DateTime? dateTime = await showDatePicker(
//                       context: context,
//                       initialDate: selectedDate,
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(3000),
//                   );
//                   if(dateTime != null) {
//                     setState(() {
//                       selectedDate =  dateTime;
//                     });
//                   }
//                 },
//                 child: Text('Choose Date')
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }
//DATE PICKER COMPLETE

//DATE RANGE PICKER
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   DateTimeRange selecteddates = DateTimeRange(
//       start: DateTime.now(),
//       end: DateTime.now());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center ,
//           children: [
//               Text('${selecteddates.duration.inDays}'),
//             ElevatedButton(
//                 onPressed: () async{
//                   final DateTimeRange? dateTimeRange = await showDateRangePicker(
//                       context: context,
//                       firstDate: DateTime(2000),
//                       lastDate: DateTime(3000),
//                   );
//                   if(dateTimeRange != null) {
//                     selecteddates = dateTimeRange;
//                   }
//                 },
//                 child: Text('Choose Date')
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//DATE RANGE PICKER COMPLETE

//DECORATED BOX
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: DecoratedBox(
//             decoration: BoxDecoration(
//               gradient: RadialGradient(
//                 colors: [
//                   Colors.blueGreys,
//                   Colors.red,
//                 ]
//               )
//             ),
//         ),
//       ),
//     );
//   }
// }
//DECORATED BOX COMPLETE

//DEFAULT TEXT STYLE
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Flutter'),
//             DefaultTextStyle(
//                 style: TextStyle(
//                   color: Colors.pink,
//                   fontSize: 40,
//                 ),
//                 child: Column(
//                   children: [
//                     Text('Flutter'),
//                     Text('Flutter',style: TextStyle(color: Colors.green),),
//                     Text('Flutter',style: TextStyle(fontSize: 20),),
//                   ],
//                 )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//DEFAULT TEXT STYLE COMPLETE

//DISMISSIBLE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   List<int> items = List.generate(100, (int index) => index);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: items.length,
//           padding: EdgeInsets.symmetric(vertical: 16),
//           itemBuilder: (BuildContext context, int index) {
//               return Dismissible(
//                   background: Container(
//                     color: Colors.red,
//                     child: Icon(Icons.delete),
//                   ),
//                   key: ValueKey<int>(items[index]),
//                   onDismissed: (DismissDirection direction) {
//                     setState(() {
//                       items.removeAt(index);
//                     });
//                   },
//                   child: ListTile(
//                     title: Text('Item ${items[index]}'),
//                   )
//               );
//           }
//       ),
//     );
//   }
// }
//DISMISSIBLE COMPLETE

//DIVIDER
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 200,
//               color: Colors.orange,
//             ),
//             Divider(
//               height: 20,
//               thickness: 5,
//               color: Colors.green,
//               indent: 10,
//               endIndent: 10,
//             ),
//             Container(
//               height: 200,
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//DIVIDER COMPLETE

//DRAGGABLE SCROLLABLE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DraggableScrollableSheet(
//           builder: (BuildContext context,ScrollController scrollController) {
//             return Container(
//               color: Colors.orange,
//               child: ListView.builder(
//                 controller: scrollController,
//                   itemCount: 25,
//                   itemBuilder: (BuildContext context, int index) {
//                       return ListTile(
//                         title: Text('Item ${index}'),
//
//                       );
//                   }
//               ),
//             );
//           }
//       ),
//     );
//   }
// }
//DRAGGABLE SCROLLABLE COMPLETE

//DRAG TARGET
// class MyWidgets extends StatelessWidget {
//   Color caughtColor = Colors.red;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Draggable(
//                 data: Colors.orangeAccent,
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.orangeAccent,
//                     child: Center(child: Text('Box')),
//                   ),
//                   feedback: Container(
//                       width: 150,
//                       height: 150,
//                       color: Colors.green,
//                       child: Center(
//                         child: Text(
//                           'box..',
//                           style: TextStyle(
//                             color: Colors.white,
//                             decoration: TextDecoration.none,
//                             fontSize: 18,
//                           ),
//                   ),
//                 ),
//               ),
//               ),
//               DragTarget(
//                 onAccept: (Color color) {
//                   caughtColor = color;
//                 },
//                   builder: (BuildContext context, List accepted, List rejected) {
//                       return Container(
//                         height: 200,
//                         width: 200,
//                         color: accepted.isEmpty ? caughtColor : Colors.grey,
//                         child: Center(
//                           child: Text('Drag here'),
//                         ),
//                       );
//                   }
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//DRAG TARGET COMPLETE

//DRAWER, DRAWER HEADER
// class MyWidgets extends StatelessWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DRAWER'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.lightGreenAccent
//               ),
//                 child: Text('Drawer header')
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {},
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//DRAWER, DRAWER HEADER COMPLETE

//DROPDOWN BUTTON
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MywidgetsState();
// }
//
// class _MywidgetsState extends State<MyWidgets> {
//   String dropdownvalue = 'one';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: DropdownButton(
//             value: dropdownvalue,
//             icon: Icon(Icons.menu),
//             style: TextStyle(
//               color: Colors.black,
//             ),
//             underline: Container(
//               height: 2,
//               color: Colors.black,
//             ),
//             onChanged: (String? newValue) {
//               setState(() {
//                 dropdownvalue = newValue!;
//               });
//             },
//             items: [
//               DropdownMenuItem(
//                 value: 'one',
//                   child: Text('one'),
//               ),
//               DropdownMenuItem(
//                 value: 'two',
//                 child: Text('two'),
//               ),
//               DropdownMenuItem(
//                 value: '3',
//                 child: Text('three'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//DROPDOWN BUTTON COMPLETE

//EXPANDED ICON
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               color: Colors.orange,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       'Title',
//                       style: TextStyle(color: Colors.white,fontSize: 22),
//                     ),
//                   ),
//                   ExpandIcon(
//                       isExpanded: _isExpanded,
//                       color: Colors.white,
//                       expandedColor: Colors.black,
//
//                       onPressed: (bool isExpanded) {
//                         setState(() {
//                           _isExpanded = !isExpanded;
//                         });
//                       }
//                   )
//                 ],
//               ),
//             ),
//             if(_isExpanded)
//               Padding(
//                 padding: EdgeInsets.all(15),
//                 child: Text('Flutter'),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//EXPANDED ICON COMPLETE

//EXPANSION PANEL LIST
// class Item {
//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded= false,
//   });
//   String headerText;
//   String expandedText;
//   bool isExpanded;
// }
//
//
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   final  List<Item> _data = List<Item>.generate(
//           10,
//           (int index) {
//             return Item(
//                 headerText: 'Item $index',
//                 expandedText: 'This is item number $index',
//             );
//           });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: ExpansionPanelList(
//             expansionCallback: (int index, bool isExpanded) {
//               setState(() {
//                 _data[index].isExpanded = !isExpanded;
//               });
//             },
//             children: _data.map<ExpansionPanel>((Item item) {
//               return ExpansionPanel(
//                   headerBuilder: (BuildContext context,bool isExpanded) {
//                     return ListTile(
//                       title: Text(item.headerText),
//                     );
//                   },
//                   body: ListTile(
//                     title: Text(item.expandedText),
//                     subtitle: Text("To delete this item, click trash icon"),
//                     trailing: Icon(
//                       Icons.delete ,
//                       color: Colors.orangeAccent,
//                     ),
//                     onTap: () {
//                       setState(() {
//                         _data.removeWhere((Item currentItem) => item == currentItem);
//                       });
//                     },
//                   ),
//                   isExpanded: item.isExpanded
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//EXPANSION PANEL LIST COMPLETE

//EXPANSION PANEL
// class Item {
//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded= false,
//   });
//   String headerText;
//   String expandedText;
//   bool isExpanded;
// }
//
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   final  List<Item> _data = List<Item>.generate(
//           10,
//           (int index) {
//             return Item(
//                 headerText: 'Item $index',
//                 expandedText: 'This is item number $index',
//             );
//           });
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: ExpansionPanelList(
//             expansionCallback: (int index, bool isExpanded) {
//               setState(() {
//                 _data[index].isExpanded = !isExpanded;
//               });
//             },
//             children: _data.map<ExpansionPanel>((Item item) {
//               return ExpansionPanel(
//                   headerBuilder: (BuildContext context, bool isExpanded) {
//                     return ListTile(
//                       title: Text(item.headerText),
//                     );
//                   },
//                   body: ListTile(
//                     title: Text(item.expandedText),
//                     subtitle: Text("To delete this item, click trash icon"),
//                     trailing: Icon(
//                         Icons.delete,
//                       color: Colors.orangeAccent,
//                     ),
//                     onTap: () {
//                       setState(() {
//                         _data.removeWhere((Item currentItem) => item == currentItem);
//                       });
//                     },
//                   ),
//                 isExpanded: item.isExpanded
//               );
//             }).toList(),
//         ),
//       )
//       )
//     );
//   }
// }
//EXPANSION PANEL COMPLETE

//EXPANSION TILE
// class MyWidgets extends StatefulWidget {
//   const MyWidgets({Key? key}) : super(key: key);
//
//   @override
//   State<MyWidgets> createState() => _MyWidgetsState();
// }
//
// class _MyWidgetsState extends State<MyWidgets> {
//   bool _customIcon = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             ExpansionTile(
//                 title: Text('Expansion Tile'),
//
//               children: [
//                 ListTile(
//                   title: Text('This is tile'),
//                 )
//               ],
//               controlAffinity: ListTileControlAffinity.leading,
//               // onExpansionChanged: (bool expanded) {
//               //     setState(() => _customIcon = expanded);
//               // },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//EXPANSION TILE COMPLETE