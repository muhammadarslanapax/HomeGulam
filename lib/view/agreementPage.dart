import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Agreement extends StatefulWidget {
  const Agreement({Key? key}) : super(key: key);

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
   bool _isChecked = false;
   void printMessage(){
     print("User accepted the Agreement");
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("Agreement",style: TextStyle(color: Colors.black),),
        leading: SizedBox(
          width: 25,
          height: 25,
          child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_rounded,color: Colors.black,),

      ),
        ),
    ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height)*.75,

              margin: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
                Text(''' ddddddddddddddddd tgggggb bbbbbbbb gbb gh ggggggggggg  sddddddddd sddddddddd dssssssssssss dssssssssssss dssssssss''',style: GoogleFonts.poppins(fontSize: 48,color: Colors.black),),
               ],

               ),
                ),

               ),
               Row(children: [
               Checkbox(value: _isChecked,
               onChanged: (bool? newValue){
               setState(() {
                 _isChecked =newValue!;

             });
             }),
                 Text("I agree to all the term and conditions",style: TextStyle(fontSize: 14),)
              ],),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Align(
                alignment: Alignment.centerRight,
                    child: MaterialButton(
                      onPressed:_isChecked? printMessage:null,
                    child:const Text("NEXT",),
                    textColor: Colors.white,
                    color: AppColors.introTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),

                    ),

                ),
            ),
             ],
            ),
      ),







    );

  }
}
