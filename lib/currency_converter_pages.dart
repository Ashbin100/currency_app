import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// create a variable that stores the converted currency value
//create a function that multiplies the value given by the textfield
//store the value in the  variable that we created
//display the variable
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage ({super.key});

  @override
  State<CurrencyConverterMaterialPage > createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage > {
  double result=0;
   final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
   
    
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 214, 141),
      appBar: AppBar(title:const Text("welcome Here", style: TextStyle(color: Colors.black),),
      centerTitle: true,),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
           'NRS $result', 
           style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
            color: Colors.brown,
           ),),
           Padding(
             padding: const EdgeInsets.only(left: 500.0, right: 500, bottom: 20),
             child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                //label: Text("enter details", style: TextStyle(color: Colors.white),),
                //helperText: "hello",

                hintText: "Enter the details",
                hintStyle:const  TextStyle(
                  color: Colors.black45,
                ),
                prefixIcon: const Icon(Icons.monetization_on),
                prefixIconColor: Colors.black45,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  
                  borderSide: const BorderSide(
                    color: Colors.white,
                    
                    ),
                    borderRadius:BorderRadius.circular(100.0),
                ),
                
              ),
              keyboardType:const TextInputType.numberWithOptions(
                decimal: true,
              ),
              
             ),
           ),
           Container(
            color: const Color.fromARGB(222, 8, 0, 0),
            child: TextButton(onPressed: (){
              //print(textEditingController.text);
              //print(double.parse(textEditingController.text)*130);
              
              setState(() {
                result=double.parse(textEditingController.text)*132;
              });
            },
             child:const Text("Click Here"),
            style:const  ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(400.0, 50.0)),
            ),
            )),
           
        ],
        
      ),
    ),
  );
  }
}


