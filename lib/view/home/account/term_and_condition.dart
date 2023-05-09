import 'package:flutter/material.dart';

import '../../../res/color.dart';

class Term_and_Conditions extends StatefulWidget {
  const Term_and_Conditions({Key? key}) : super(key: key);

  @override
  State<Term_and_Conditions> createState() => _Term_and_ConditionsState();
}

class _Term_and_ConditionsState extends State<Term_and_Conditions> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,

      appBar: AppBar(
        leading: Container(
            child: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),)),
            title: const Text("Terms and Conditions",style: TextStyle(color: Colors.black,),),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            children: [
              Text(" sdasd asdasd adsdsd adasdasd dasd sadas dasd sdasd asdas adsdsd adasdasd dasd sadas dasd sdasd",style: TextStyle(fontSize: 18),)
            ],

          ),
        ),
      ),

    );
  }
}
