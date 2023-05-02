import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/constants/styles.dart';
import 'package:ecommerce_app/view/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {

  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}



class _PaymentPageState extends State<PaymentPage> {
  final fNameController =TextEditingController();
  final cardNoController =TextEditingController();
  final expiryDateController =TextEditingController();
  final cvvController =TextEditingController();
  bool defaultCard = true;
  var cardTypeController;

  List listItem = ["Visa", "Debit", "Master", "Credit",];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
            centerTitle: true,
            title: Text('payment',
                style: TextStyle(color: AppColors.blackColor)),
            leading: SizedBox(
              height: 25,
              width: 25,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.blackColor,
                  )),
            )),

        body: SingleChildScrollView(
          child: Container(
            height: (MediaQuery.of(context).size.height)*0.85,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                header(context, "proceed with payment to book your appointment"),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Full Name', style: GoogleFonts.poppins(
                            letterSpacing: 1,fontWeight: FontWeight.w500)),

                        SizedBox(height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.dim3Color,
                              border: Styles().textFieldStyle(),
                            ),

                            controller: fNameController,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Type', style: GoogleFonts.poppins(
                            letterSpacing: 1,fontWeight: FontWeight.w500)),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.dim3Color),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: DropdownButton(
                              hint: const Text("Select here"),
                              icon: const Icon(Icons.arrow_drop_down),
                              underline: const SizedBox(),
                              style:
                              const TextStyle(fontSize: 16, color: Colors.black87),
                              isExpanded: true,

                              value: cardTypeController,
                              onChanged: (newType) {
                                setState(() {
                                  cardTypeController = newType;
                                });
                              },
                              items: listItem.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),



              ],

            ),
          ),
        ),

      ),
    );
  }
}
