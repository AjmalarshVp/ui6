import 'package:flutter/material.dart';
import 'package:flutter_application_1/custompage.dart';

class ui_6 extends StatelessWidget {
  const ui_6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 5, 76, 134), title:Text('Cataloge'),centerTitle: true,actions: [

          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Icon(Icons.search_rounded,color: Colors.white,size: 28,),
          ),
          
          
        ], 
        bottom: TabBar(tabs: [
          Tab(
            text: 'Products',
          ),
          Tab(
            text: 'Catagories',

          ),
        ]),
        ),
        body:Padding(
          padding: const EdgeInsets.all(13.0),
          child: ListView(
            children: [
               CustomListTile(
                    header: 'Couch Potato | Women',
                    imageUrl: 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    price: 799),
               CustomListTile(
                    header: 'Couch Potato | Men',
                    imageUrl: 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    price: 799),
               CustomListTile(
                    header: 'Mug | Explore',
                    imageUrl: 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    price: 399),
               CustomListTile(
                    header: 'Combo Blasht 1 | Pack',
                    imageUrl: 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    price: 799),
             CustomListTile(
                    header: 'Mug | Orchard',
                    imageUrl: 'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    price: 449),
            ],
          ),
        ) ,
      ),
      
    );
  }
}