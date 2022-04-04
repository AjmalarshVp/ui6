// import 'package:flutter/material.dart';

// class lictcustum extends StatelessWidget {
//   final String text;
//   const lictcustum({Key? key, required this.text}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//           padding: const EdgeInsets.only(top: 8.0),
//           child: Container(
//             color: Colors.white,
//             child: Column(
//               children: [
//                 ListTile(
//                   dense:true,
//                 contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
//                   leading: Container(
//                     height: 200,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       image: DecorationImage(image: NetworkImage(
//                         'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg'),)
//                     ),
//                   ),
//                   title: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [Text('kjkadf'), Icon(Icons.menu_rounded)],
//                       ),
//                       Text('kjdfk'),
//                       Text('kjdfk'),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('kjdfk'),
//                           Icon(Icons.toggle_off)
//                         ],
//                       ),
                      
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 Text('hfjdhfksd')
//               ],
//             ),
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  bool values = true;
  String imageUrl;
  String header;
  int? piece;
  int price;
  String? stock = 'In stock';
  CustomListTile(
      {Key? key,
      required this.header,
      required this.imageUrl,
      this.piece,
      this.stock,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //width: MediaQuery.of(context).size.width,
          height: 155,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              imageUrl,
                              width: 90,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 183,
                                  child: Text(
                                    header,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  )),
                              Text("1 piece"),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "₹ $price",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'In Stock',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          Switch(
                            value: values,
                            onChanged: (value) {},
                            activeColor: Colors.blue,
                            inactiveTrackColor: Colors.blue[50],
                            
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey[400]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 11, 0, 0),
                    child: Row(
                      children: [
                        Icon(Icons.share_outlined),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Share Product',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

