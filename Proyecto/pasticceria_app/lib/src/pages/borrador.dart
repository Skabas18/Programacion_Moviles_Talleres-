// child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
//               child: CarouselSlider(
//                 options: CarouselOptions(
//                   height: 200,
//                   aspectRatio: 16 / 9,
//                   viewportFraction: 0.8,
//                   initialPage: 0,
//                   enableInfiniteScroll: true,
//                   reverse: false,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 3),
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enlargeCenterPage: true,
//                   //onPageChanged: callbackFunction,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: [1, 2, 3, 4, 5].map((i) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 5.0),
//                           decoration: BoxDecoration(color: Colors.amber),
//                           child: Text(
//                             'text $i',
//                             style: TextStyle(fontSize: 16.0),
//                           ));
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 16),
//               child: Text("Elije que quieres pedir"),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
//               child: Row(
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 8),
//                         child: Container(
//                           child: Image.asset('assets/images/cake.png'),
//                           height: 100,
//                           color: Color(0xFF92CAE2),
//                         ),
//                       ),
//                       //Text(''),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 8),
//                         child: Container(
//                           child: Image.asset('assets/images/cupcake.png'),
//                           height: 100,
//                           color: Color(0xFF92CAE2),
//                         ),
//                       ),
//                       //Text(''),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Container(
//                         child: Image.asset('assets/images/desing.png'),
//                         height: 100,
//                         color: Color(0xFF92CAE2),
//                       ),
//                       //Text(''),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
//               child: Row(
//                 children: [
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 8),
//                         child: Container(
//                           child: Image.asset('assets/images/cokies.png'),
//                           height: 100,
//                           color: Color(0xFF92CAE2),
//                         ),
//                       ),
//                       //Text(''),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 8),
//                         child: Container(
//                           child: Image.asset('assets/images/candies.png'),
//                           height: 100,
//                           color: Color(0xFF92CAE2),
//                         ),
//                       ),
//                       //Text(''),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Container(
//                         child: Image.asset('assets/images/celebration.png'),
//                         height: 100,
//                         color: Color(0xFF92CAE2),
//                       ),
//                       //Text(''),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         )),