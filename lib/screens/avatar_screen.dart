import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text('Glorita Reyes'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              child: const   Text('GR',style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.indigo [900]
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 110,
         backgroundImage:AssetImage('assets/foto.jpeg'),)
       //  backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
         )
      );
  }
}