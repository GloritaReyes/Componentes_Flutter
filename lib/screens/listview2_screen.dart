import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['Megaman','Metal Gear','Super Smash','Final Fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2',
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500),  
        ),
        centerTitle: true,  
        backgroundColor: Colors.indigo,
      
        shadowColor: Colors.grey,
      ),
      body:ListView.separated(
        itemCount: options.length,
        itemBuilder: (context,i) => ListTile(
          title:Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap:(){
            final game = options[i];
            print(game);
          },
        ), 
        separatorBuilder:(_ , __) => const  Divider() , 
      )
    );
  }
}
