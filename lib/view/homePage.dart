import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebha/constant.dart';
import 'package:sebha/view/resultScreen.dart';

import '../widgets/iconBottons.dart';
import '../widgets/text.dart';

class SebHa extends StatefulWidget {
   SebHa({super.key });

  @override
  State<SebHa> createState() => _SebHaState();
}

class _SebHaState extends State<SebHa> {
  @override
  int count = 0 ;
  addOne(){
    setState(() {
      count = count + 1 ;
    });
  }
  reset(){
    setState(() {
      count = 0 ;
    });
  }
  @override

  Widget build(BuildContext context) {
   final height = MediaQuery.of(context).size.height;
   final width = MediaQuery.of(context).size.height;

    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [backColor1, backColor2],
    )),
    child: Scaffold(
     backgroundColor: Colors.transparent,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.09,),
            Center(child: Image.asset("assets/quran.png" , width: width * (250 / width)) , ),
            CustomText(height: height , text: ("سبحان الله "),),
            SizedBox(height: height * 0.04,),
            Text(count.toString() , style: TextStyle(
              fontSize: height * 0.06,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: height * 0.1,),
          Center(
            child: Row(
              children: [
                Spacer(),
                CustomIconBottons(count: count, height: height , onPressed: (){
                  reset();
                },

                    icon: Icon(Icons.refresh_outlined , size:  height * (40 / height),)),
                Spacer(),
                CustomIconBottons(count: count, height: height ,  onPressed: (){
                  addOne();
                },
                    icon: Icon(Icons.add , size:  height * (65 / height),)),
                Spacer(),
                CustomIconBottons(count: count, height: height ,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Result(count: count,),)) ;
                    },
                    icon: Icon(Icons.done , size:  height * (40 / height),)),
                Spacer(),
              ],
            ),
          ),
            SizedBox(height: height * 0.1,),

          ],
        ),
      ),
    )
    );
  }
}


