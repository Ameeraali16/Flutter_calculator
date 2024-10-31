import 'package:calculator/constants/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screens/data.dart';
import 'package:calculator/screens/historyScreen.dart';
import 'package:calculator/widget/button.dart';
import 'package:calculator/widget/cal_button.dart';

import 'package:calculator/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenHeight =  MediaQuery.sizeOf(context).height ;
    final padding = const EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)) );




    return Consumer<CalculatorProvider>( 
      builder: (context, provider, _) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                title: const Text("",
                 style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
                centerTitle: true,

                actions: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                      );
                    }, icon: Icon(
                      Icons.history
                      ) 
                    )
                ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                CustomTextField(
                  controller: provider.compController,
                  
                ),
              //  const Spacer(),
                Container(
                height: ScreenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                // ignore: prefer_const_constructors
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                       4, (index) => buttonList[index])
                       ,),
                       const SizedBox(height: 10),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                       4, (index) => buttonList[index+4])
                       ,)
                       ,
                       const SizedBox(height: 10),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                       4, (index) => buttonList[index+8])
                       ,)
                       ,
                       const SizedBox(height: 10),
                           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                       4, (index) => buttonList[index+12])
                       ,),
                     //Last row
                   const SizedBox(height: 10),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.Secondary2Color,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.fromLTRB(35, 12, 128, 12),
                      ),
                      onPressed: () => Provider.of<CalculatorProvider>(context,
                              listen: false)
                          .setValue("0"),
                      child: const Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                     ),
                          ),
                        ),
                        const Button1(label: '.',
                        ),
                        const Button1(label: '=', buttonColor: AppColors.SecondaryColor,
                        ),
                      ],
                       
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



