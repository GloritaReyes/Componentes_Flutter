import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {

   
  const CardScreen({
    Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children:const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name:'Un hermoso paisaje', imageUrl: 'https://switzerland-tour.com/storage/media/4-ForArticles/swiss-mountains.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2022/09/Honister-Pass-By-Daniel-Casson-2.jpeg',),
          SizedBox(height: 100),


        ],
      ),
    );
  }
}
