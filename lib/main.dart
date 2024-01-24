import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.InitialRoute,
      routes: AppRoutes.getAppRoutes(), 
      onGenerateRoute:AppRoutes.onGenerateRoute,
      theme: ThemeData(
       
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          iconTheme: IconThemeData(
            color: Colors.white,
            
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
           
          )
        ),
        
      )
      
    );
  }
}