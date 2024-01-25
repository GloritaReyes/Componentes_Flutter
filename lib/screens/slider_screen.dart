import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: Apptheme.primary,
           value: _sliderValue,
            onChanged: _sliderEnabled
              ?(value){
                _sliderValue = value; 
              setState(() {});
            }
            : null
          ),
            
       //   Checkbox(
         //   value: _sliderEnabled,
           // onChanged: (value) {
             // _sliderEnabled = value ?? true;
              //setState(() {});
            //},
          //),
            
          //Switch(
         // value: _sliderEnabled, 
         // onChanged: (value) =>setState (() {_sliderEnabled = value ?? true;})
          //),
           CheckboxListTile( 
            activeColor: Apptheme.primary,
            title: const  Text('Habilirar Slider'),
            value: _sliderEnabled,
            onChanged: (value) =>setState (() {_sliderEnabled = value ?? true;})       
          ),

          SwitchListTile.adaptive(

             activeColor: Apptheme.primary,
            title: const  Text('Habilirar Slider'),
            value: _sliderEnabled,
            onChanged: (value) =>setState (() {_sliderEnabled = value;})       
          ),
        
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.shutterstock.com/image-vector/bugs-bunny-character-cartoon-illustration-600nw-2325715335.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
            const SizedBox(height: 50),            
        ],
      )
    );
  }
}