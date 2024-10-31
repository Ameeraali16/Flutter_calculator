import 'package:calculator/constants/colors.dart';
import 'package:calculator/widget/button.dart';
import 'package:flutter/material.dart';

List<Widget> buttonList = [

      //Row 1
      const Button1(label: 'AC',
      textColor: Colors.black, buttonColor: Colors.grey,),
      const Button1(label: '+/-',
      textColor: Colors.black, buttonColor: Colors.grey),
      const Button1(label: '%',
      textColor:Colors.black,  buttonColor: Colors.grey),
      const Button1(label: '/', buttonColor: AppColors.SecondaryColor,
      ),

      //Row 2
      const Button1(label: '7',
      ),
      const Button1(label: '8',
      ),
      const Button1(label: '9',
      ),
      const Button1(label: 'X',
      buttonColor: AppColors.SecondaryColor,
     ),

      //Row 3
       const Button1(label: '4',
      ),
      const Button1(label: '5',
      ),
      const Button1(label: '6',
      ),
      const Button1(label: '-', buttonColor: AppColors.SecondaryColor,
      ),

      //Row 4
      const Button1(label: '1',
      ),
      const Button1(label: '2',
      ),
      const Button1(label: '3',
      ),
      const Button1(label: '+', buttonColor: AppColors.SecondaryColor,
      ),

      //Row 5
      //  const Button1(label:'0',
      // ),
      const Button1(label: '.',
      ),
      const Button1(label: '=', buttonColor: AppColors.SecondaryColor,
      ),
     
      
];