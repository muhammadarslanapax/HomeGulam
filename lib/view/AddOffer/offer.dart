import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  var titleController = TextEditingController();
  var pricingController = TextEditingController();
  var hoursController = TextEditingController();
  var categoryController = TextEditingController();
  var whatsincludedController = TextEditingController();
  var paymentController = TextEditingController();
  var avaliabilityController = TextEditingController();
  var bookingController = TextEditingController();

  List<DropdownMenuItem<String>> get catagory{
    return[
      DropdownMenuItem(child: Text(""),value: "1",),
      DropdownMenuItem(child: Text("IND"),value: "2",),
      DropdownMenuItem(child: Text("AUS"),value: "3",),
      DropdownMenuItem(child: Text("ENG"),value: "4",),
      DropdownMenuItem(child: Text("DUB"),value: "5",)
    ];
  }
  List<DropdownMenuItem<String>> get payment{
    return[
      DropdownMenuItem(child: Text("Paypal"),value: "1",),
      DropdownMenuItem(child: Text("Google Pay"),value: "2",),
      DropdownMenuItem(child: Text("Live Payment Method"),value: "3",),
      DropdownMenuItem(child: Text("Card Payment Method"),value: "4",),
      DropdownMenuItem(child: Text("Advance Card Payment Method"),value: "5",)
    ];
  }
  List<DropdownMenuItem<String>> get booking {
    return[
      DropdownMenuItem(child: Text("Computer"),value: '1',),
      DropdownMenuItem(child: Text("Science"),value: '2',),
      DropdownMenuItem(child: Text("Maths"),value: '3',),
      DropdownMenuItem(child: Text("English"),value: '4',),
      DropdownMenuItem(child: Text("Urdu"),value: '5',)
    ];

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Add Offer",style: TextStyle(color: Colors.black),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded),color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Container(
          
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Tittle",style:Styles().txtFormTitleStyle(color: AppColors.primaryTextColor,)),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.dim4_text,
                      filled: true,
                    errorBorder: Styles().errorFormBorder(),
                    errorStyle: Styles().errorFormText(),
                    focusedErrorBorder: Styles().errorFormBorder(),
                    border: Styles().texFormStyle()

                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'required field';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value){
                    FocusNode().nextFocus();
                  },
                  controller: titleController,

                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Pricing",style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor),),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.dim4_text,
                    errorStyle: Styles().errorFormText(),
                    errorBorder: Styles().errorFormBorder(),
                    border: Styles().texFormStyle(),
                    focusedErrorBorder: Styles().errorFormBorder()
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'required field';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value){
                    FocusNode().nextFocus();
                  },
                  controller: pricingController ,
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Hours",style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor),),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Add service duration",hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),
                      filled: true,
                      fillColor: AppColors.dim4_text,
                      errorStyle: Styles().errorFormText(),
                      errorBorder: Styles().errorFormBorder(),
                      border: Styles().texFormStyle(),
                      focusedErrorBorder: Styles().errorFormBorder()
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'required field';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value){
                    FocusNode().nextFocus();
                  },
                  controller:hoursController ,
                ),
              ),

              SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Category",style: GoogleFonts.poppins(color: AppColors.primaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                      SizedBox(
                          child: DropdownButtonFormField(items: catagory, onChanged: (String? value){
                            print(catagory);
                          },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim4_text,
                              border: Styles().texFormStyle(),
                              hintText: "",hintStyle: TextStyle(fontSize: 14),),
                            style: TextStyle( color: AppColors.text2_color),

                          )
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("What’s included",style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor),),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.dim4_text,
                      errorStyle: Styles().errorFormText(),
                      errorBorder: Styles().errorFormBorder(),
                      border: Styles().texFormStyle(),
                      focusedErrorBorder: Styles().errorFormBorder()
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'required field';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value){
                    FocusNode().nextFocus();
                  },
                  controller: whatsincludedController ,
                ),
              ),

              SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Payment",style: GoogleFonts.poppins(color: AppColors.primaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                      SizedBox(
                          child: DropdownButtonFormField(items: payment, onChanged: (String? value){
                            print(payment);
                          },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim4_text,
                              border: Styles().texFormStyle(),
                              hintText: "Choose a payment method from above",hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),),
                            style: TextStyle( color: AppColors.text2_color),

                          )
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Avaliability",style: Styles().txtFormTitleStyle(color: AppColors.primaryTextColor),),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Choose avaliable hours for the service",hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),
                      filled: true,
                      fillColor: AppColors.dim4_text,
                      errorStyle: Styles().errorFormText(),
                      errorBorder: Styles().errorFormBorder(),
                      border: Styles().texFormStyle(),
                      focusedErrorBorder: Styles().errorFormBorder()
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'required field';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value){
                    FocusNode().nextFocus();
                  },
                  controller: avaliabilityController ,
                ),
              ),
              
              SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Booking",style: GoogleFonts.poppins(color: AppColors.primaryTextColor,fontWeight: FontWeight.w500,fontSize: 16),)),
                      SizedBox(
                          child: DropdownButtonFormField(items: booking,iconDisabledColor:AppColors.primaryTextColor , onChanged: (String? value){

                            print(booking);
                          },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim4_text,
                              border: Styles().texFormStyle(),
                              hintText: "Select booking method from above",hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),),
                            style: TextStyle( color: AppColors.text2_color),

                          )
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: 150,
                      decoration: BoxDecoration(
                        color: AppColors.introTextColor,
                        borderRadius: BorderRadius.circular(7)


                      ),
                      child: TextButton(onPressed: (){},child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)) ,),
                    ),
                  ],
                ),
              )

            ],
          ),

        ),
      ),



    );
  }
}
