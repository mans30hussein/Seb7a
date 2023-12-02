import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/view/homePage.dart';
import 'package:sebha/widgets/text.dart';

import '../constant.dart';

class Result extends StatefulWidget {
   Result({ required this.count});
   int count ;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  reset(){
    setState(() {
      widget.count = 0 ;
    });
  }
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [backColor1, backColor2] ,

        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.1,),
              Center(child: Image.asset("assets/quran.png" , width: width * (250 / width)) , ),
              CustomText(height: height, text:"عدد التسبيحات"),
              SizedBox(height: height * 0.03,),
              Text(widget.count.toString() , style: TextStyle(
                fontSize: height * 0.06,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: height * 0.1,),
              MaterialButton(onPressed: (){
                Navigator.pop(context) ;

              } ,
                color: Colors.black,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(height * (20/height)),
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
                ),
                child: Text("العودة الي الصفحة الرئيسية" , style: TextStyle(
                  fontSize: height * (30 / height),
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
              ),
              SizedBox(height: height * 0.1,),
            ],
          ),
        ),
      ),
    );
  }
}
