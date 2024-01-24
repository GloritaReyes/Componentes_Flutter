import 'package:flutter/material.dart';
class Apptheme{

  static const Color primary = Colors.indigo;

  static final ThemeData  lightTheme = ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo,

        //appbar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      );

        static final ThemeData  darkTheme = ThemeData.dark().copyWith(
        //color primario
        primaryColor: Colors.indigo,

        //appbar theme 
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white
          )
        ),
        
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary:primary)
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(  
             primary: Colors.amber,
             shape: const StadiumBorder(),
             elevation: 100
           ), 
        ),
        
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),topRight: Radius.circular(10) )
          ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                   color:primary
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),

                        )
                    )
                   ),
      );
}
