import 'package:calculator/Custom/buttons.dart';
import 'package:calculator/Custom/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CustomCalculator extends StatefulWidget {
  const CustomCalculator({super.key});

  @override
  State<CustomCalculator> createState() => _CustomCalculatorState();
}

class _CustomCalculatorState extends State<CustomCalculator> {
  var input = '';
  var output = '';
  var num1 = 0.0;
  var num2 = 0.0;
  var operations = "";

  void onBtnClick(String value) {

if (value == "AC") {
    input = '';
   output = '';
}else if(value == "<<"){
  if(input.isNotEmpty){
  input = input.substring(0,input.length - 1);
  }
}else if(value == "="){
  if (input.isNotEmpty){
  var userInput = input;
  userInput = input.replaceAll("x", "*");
  Parser p = Parser();
  Expression expression = p.parse(userInput);
  ContextModel cm = ContextModel();
  var finalValue = expression.evaluate(EvaluationType.REAL, cm);
  output = finalValue.toString();
 

 print("Output of $input is :  $output");
}
}
else{
  input = input + value;
}


    setState(() {});

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackcolor,
      body: Column(
        children: [
          // const SizedBox(height: 130,),
          Container(
            width: 500,
            color: AppColors.graycolor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.graycolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(input, style: TextStyle(fontSize: 35, color: AppColors.whitecolor,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20,),
                  Text(output, style: TextStyle(fontSize: 25, color: AppColors.whitecolor.withOpacity(0.7))),
                  const SizedBox(height: 10,),

                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: '2nd', onpressed: () => onBtnClick('2nd')),
              CustomButtons(colors: AppColors.browncolor, title: 'rad', onpressed: () => onBtnClick('rad')),
              CustomButtons(colors: AppColors.browncolor, title: 'sin', onpressed: () => onBtnClick('sin')),
              CustomButtons(colors: AppColors.browncolor, title: 'cos', onpressed: () => onBtnClick('cos')),
              CustomButtons(colors: AppColors.browncolor, title: 'tan', onpressed: () => onBtnClick('tan')),
            ],
          ),
        
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: 'x^y', onpressed: () => onBtnClick('x^y')),
              CustomButtons(colors: AppColors.browncolor, title: 'lg', onpressed: () => onBtnClick('lg')),
              CustomButtons(colors: AppColors.browncolor, title: 'ln', onpressed: () => onBtnClick('ln')),
              CustomButtons(colors: AppColors.browncolor, title: '(', onpressed: () => onBtnClick('(')),
              CustomButtons(colors: AppColors.browncolor, title: ')', onpressed: () => onBtnClick(')')),
            ],
          ),
         
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: 'sqrt(x)', onpressed: () => onBtnClick('sqrt(x)')),
              CustomButtons(colors: AppColors.ambercolor, title: 'AC', onpressed: () => onBtnClick('AC')),
              CustomButtons(colors: AppColors.ambercolor, title: '<<', onpressed: () => onBtnClick('<<')),
              CustomButtons(colors: AppColors.ambercolor, title: '%', onpressed: () => onBtnClick('%')),
              CustomButtons(colors: AppColors.ambercolor, title: '/', onpressed: () => onBtnClick('/')),
            ],
          ),
          
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: 'x!', onpressed: () => onBtnClick('x!')),
              CustomButtons(colors: AppColors.graycolor, title: '7', onpressed: () => onBtnClick('7')),
              CustomButtons(colors: AppColors.graycolor, title: '8', onpressed: () => onBtnClick('8')),
              CustomButtons(colors: AppColors.graycolor, title: '9', onpressed: () => onBtnClick('9')),
              CustomButtons(colors: AppColors.ambercolor, title: 'X', onpressed: () => onBtnClick('X')),
            ],
          ),
          
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: '1/x', onpressed: () => onBtnClick('1/x')),
              CustomButtons(colors: AppColors.graycolor, title: '4', onpressed: () => onBtnClick('4')),
              CustomButtons(colors: AppColors.graycolor, title: '5', onpressed: () => onBtnClick('5')),
              CustomButtons(colors: AppColors.graycolor, title: '6', onpressed: () => onBtnClick('6')),
              CustomButtons(colors: AppColors.ambercolor, title: '-', onpressed: () => onBtnClick('-')),
            ],
          ),
        
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.browncolor, title: 'pi', onpressed: () => onBtnClick('pi')),
              CustomButtons(colors: AppColors.graycolor, title: '1', onpressed: () => onBtnClick('1')),
              CustomButtons(colors: AppColors.graycolor, title: '2', onpressed: () => onBtnClick('2')),
              CustomButtons(colors: AppColors.graycolor, title: '3', onpressed: () => onBtnClick('3')),
              CustomButtons(colors: AppColors.ambercolor, title: '+', onpressed: () => onBtnClick('+')),
            ],
          ),
        
          Row(
            children: [
              const SizedBox(width: 13,),
              CustomButtons(colors: AppColors.ambercolor, title: 'Number\n    pad', onpressed: () => onBtnClick('Number pad')),
              CustomButtons(colors: AppColors.graycolor, title: 'e', onpressed: () => onBtnClick('e')),
              CustomButtons(colors: AppColors.graycolor, title: '0', onpressed: () => onBtnClick('0')),
              CustomButtons(colors: AppColors.graycolor, title: '.', onpressed: () => onBtnClick('.')),
              CustomButtons(colors: AppColors.greencolor, title: '=', onpressed: () => onBtnClick('=')),
            ],
          ),
        ],
      ),
    );
  }
}
