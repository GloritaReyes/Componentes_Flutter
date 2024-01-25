import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';


class AppRoutes   {

 static const InitialRoute ='home';

 static final menuOptions = <MenuOption>[
   // MenuOption(route: 'home', name: 'Home Screen', Screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', Screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', Screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', Screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', Screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle - Avatar', Screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animate Container', Screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', Screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider and Checks', Screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listview', name: 'InfiniteScrol & Pull to refresh', Screen: const ListviewBuilderScreen(), icon: Icons.build_circle_outlined),


 ];

 static Map<String,Widget Function(BuildContext)> getAppRoutes(){

    Map<String,Widget Function(BuildContext)> AppRoutes ={};
            AppRoutes.addAll({'home':( BuildContext context) =>  const HomeScreen()});

    for(final option in menuOptions){

       AppRoutes.addAll({option.route :( BuildContext context) => option.Screen});
    }

     return  AppRoutes;
 }
 

// static Map<String,Widget Function(BuildContext)> routes = {
  //      'home'      :( BuildContext context) => const HomeScreen(),
    //    'listview1' :( BuildContext context) => const Listview1Screen(),
      //  'listview2' :( BuildContext context) => const Listview2Screen(),
        //'alert'     :( BuildContext context) => const AlertScreen(),
        //'card'      :( BuildContext context) => const CardScreen(),
     // };

     static Route<dynamic> onGenerateRoute (settings){
        return MaterialPageRoute(
          builder:(context)=> const AlertScreen(),
          );
      }
 }
