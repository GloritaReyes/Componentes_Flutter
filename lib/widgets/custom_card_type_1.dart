

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children:[

          const ListTile(
            leading: Icon(Icons.photo_album_outlined,color:Apptheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Eu quis minim enim deserunt elit fugiat elit eiusmod nulla Lorem proident.'),
          ),
          Padding( 
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel'),
                  ), 
                  TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok'),
                  ), 
              ],
            ),
          )
        ],
      ) ,
    );
  }
}