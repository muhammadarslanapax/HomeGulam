import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/components/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = ["assets/images/face.png","assets/images/hair.png","assets/images/nail.png","assets/images/body.png","assets/images/hinna.png","assets/images/photography.png","assets/images/event.png","assets/images/tailor.png"];

    final category = ['Face',"Hair","Nails","Body","Henna","Photography","Event Decor","Tailoring"];

    final _theme = Theme.of(context).textTheme;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return  SafeArea(child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
      child: CustomAppBar(text: "Booking Appointment", txtcolor: AppColors.blackColor, iconData: Icons.arrow_back_rounded)
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 15,left: 14,right: 9,bottom: 10),
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Select a Date and Time to check the availability and book your slot"),
              ),
              const SizedBox(height: 10,),
              Text("Date",style: _theme.bodyLarge,),
              const SizedBox(height: 10,),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5.0),
                itemCount: 10,
                itemBuilder: (context, i) => Container(
                  decoration: BoxDecoration(
                    color: AppColors.box_color,
                    borderRadius: BorderRadius.circular(18),



                  ),
                  height: 80,
                  width: 66,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("THU",),
                      Text("3"),
                    ],
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,

                   childAspectRatio: 1/1.2,
                  crossAxisSpacing: 7.5,
                  mainAxisSpacing: 15,
                ),
              ),
              const SizedBox(height: 20,),
              Text("Time",style: _theme.bodyLarge,),
              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(5.0),
                itemCount: 6,
                itemBuilder: (context, i) => Container(
                  decoration: BoxDecoration(
                    color: AppColors.box_color,
                    borderRadius: BorderRadius.circular(18),



                  ),
                  height: 56,
                  width: 111,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text("14:00-16:00 ",),
                      ),
                    ],
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,

                  childAspectRatio: 1/.5,
                  crossAxisSpacing: 7.5,
                  mainAxisSpacing: 15,
                ),
              ),
              SizedBox(height: 10,),


              Text("Booking Details",style: _theme.bodyLarge,),
              const SizedBox(height: 10,),
              const Text("vcdhd ytug shwdkur aouzh uwg. vcdhd ytug shwdkur aouzh uwg. vcdhd ytug shwdkur aouzh uwg. vcdhd ytug shwdkur aouzh uwg. vcdhd ytug shwdkur aouzh uwg. vcdhd ytug shwdkur aouzh uwg. "),

              const SizedBox(height: 10,),


              Text("Preferred Payment Method",style: _theme.bodyLarge,),
              








            ]),



          ),
      ),
      ),

    );

  }
}
