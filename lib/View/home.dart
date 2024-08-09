import 'package:calculator/Custom/buttons.dart';
import 'package:calculator/Custom/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCalculator extends StatefulWidget {
  
  const CustomCalculator({super.key});

  @override
  State<CustomCalculator> createState() => _CustomCalculatorState();
}

class _CustomCalculatorState extends State<CustomCalculator> {
  
   
   var Input = '';
   var Output  = '';
   

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColors.blackcolor,
     
        body:Expanded(
          child: Column(
            children: [
              // const SizedBox(height: 130,),
              Container(width: 500,
                color: AppColors.graycolor,
                child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 30,),
            
             Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 
                     PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                          child: Text(
                        'Settings',
                        style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
                      )),
                    ]),
                   
                  SizedBox(
                    width: 10,
                  )
                ],
              )
          ],
                )),
          
             Expanded(
               child: Container(
                decoration: const BoxDecoration(
                color: AppColors.graycolor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                 child:  Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  
                    Text(Input.toString(),style: const TextStyle(fontSize: 30 , color: AppColors.whitecolor)),
                   
              const SizedBox(height: 20,),
                    // Text(Answer.toString(),style: TextStyle(fontSize: 30 , color: AppColors.whitecolor)),
                    Text(Output.toString(),style: TextStyle(fontSize: 20 , color: AppColors.whitecolor.withOpacity(0.7))),
          
                 
                  ],
                 ),
               ),
             ),
             const SizedBox(height: 20,),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors: AppColors.browncolor, title: '2nd', onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: 'rad', onpressed: () {
                   Input = 'rad';
                   setState(() {
                     ();
                   });
                 },),
                  CustomButtons(colors: AppColors.browncolor, title: 'sin', onpressed: () {
                   Input = 'sin';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: 'cos',onpressed: () {
                   Input = 'cos';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: 'tan',onpressed: () {
                   Input = 'tan';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors: AppColors.browncolor, title: 'x^y',onpressed: () {
                   Input = 'x^y';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: 'lg',onpressed: () {
                   Input = 'lg';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: 'ln',onpressed: () {
                   Input = 'ln';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: '(', onpressed: () {
                   Input = '(';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.browncolor, title: ')',onpressed: () {
                   Input = ')';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors: AppColors.browncolor, title: 'sqrt(x)',onpressed: () {
                   Input = 'sqrt(x)';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: 'AC',onpressed: () {
                   Input = 'AC';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: '<<',onpressed: () {
                   Input = '<<';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: '%',onpressed: () {
                   Input = '%';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: '/',onpressed: () {
                   Input = '/';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors: AppColors.browncolor, title: 'x!',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor , title: '7',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '8',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '9',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: 'X',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors:AppColors.browncolor, title: '1/x',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '4',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '5',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '6',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: '-',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors:AppColors.browncolor, title: 'pi',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '1',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '2',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '3',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.ambercolor, title: '+',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
               Row(
                children: [
                  const SizedBox(width: 13,),
                 CustomButtons(colors: AppColors.ambercolor, title: 'Number\n    pad',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: 'e',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '0',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.graycolor, title: '.',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                 CustomButtons(colors: AppColors.greencolor, title: '=',onpressed: () {
                   Input = '2nd';
                   setState(() {
                     ();
                   });
                 },),
                ],
              ),
            ],
          ),
        ) 
        
    );
  }
}