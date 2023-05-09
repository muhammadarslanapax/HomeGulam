import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/view/home/home/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final category = ['Face',"Hair","Nails","Body","Henna","Photography","Event Decor","Tailoring"];
  final images = ["assets/images/face.png","assets/images/hair.png","assets/images/nail.png","assets/images/body.png","assets/images/hinna.png","assets/images/photography.png","assets/images/event.png","assets/images/tailor.png"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: "Hello",
                          style: GoogleFonts.grandHotel(
                              fontSize: 36, color: AppColors.text_color),
                          children: [
                        TextSpan(
                            text: " Maria",
                            style: GoogleFonts.aBeeZee(fontSize: 30))
                      ])),
                  InkWell(
onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
},                    child: Container(

                        width: 45,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.notification_icon_bg,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Icon(Icons.notification_add_outlined)),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Text(
                      "Let's express categories to find best services for you",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: AppColors.text_color_light,
                      ))),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.only(left: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.notification_icon_bg,
                    borderRadius: BorderRadius.circular(6)),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: AppColors.hint_color,
                      ),
                      hintText: "Search Service near you",
                      hintStyle: TextStyle(color: AppColors.hint_color),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 30,
              ),


              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [

                    Text(
                      "Explore Categories",
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: AppColors.text_color),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, mainAxisSpacing: 10),
                          itemCount: category.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 63,
                                  width: 63,
                                  decoration: BoxDecoration(
                                    color: AppColors.notification_icon_bg,
                                    borderRadius: BorderRadius.circular(63),
                                    border: Border.all(
                                      color: Colors.transparent,

                                      // thic
                                    ),
                                  ),
                                  child:  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Image.asset(images[index].toString()),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                    child: Text(
                                      category[index],
                                      style: GoogleFonts.poppins(
                                          fontSize: 14, color: AppColors.blackColor),
                                    ))
                              ],
                            );
                          }),
                    ),
                    const SizedBox(height: 10,),


                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured Service",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              "See All",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: AppColors.hint_color),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                height: 190,
                                child: Image.asset("assets/images/mainimg.png",fit: BoxFit.fill,)
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.notification_icon_bg,

                                  borderRadius: BorderRadius.circular(12)
                              ),
                              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                              height: 76,

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Cleansing Facial",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.blackColor),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: AppColors.star_color,),
                                            SizedBox(width: 5,),
                                            Text(
                                              "4.8",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.blackColor),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Jane's Spa",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.text_color_light),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$ 60",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.hint_color),
                                            ),


                                            SizedBox(width: 5,),
                                            Text(
                                              "2 hours",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.hint_color),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Service near you",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              "See All",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: AppColors.hint_color),
                            )
                          ],
                        ),


                        const SizedBox(height: 10,),
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                height: 190,
                                child: Image.asset("assets/images/mainimg.png",fit: BoxFit.fill,)
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.notification_icon_bg,

                                  borderRadius: BorderRadius.circular(12)
                              ),
                              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                              height: 76,

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Engagement Decor",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.blackColor),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: AppColors.star_color,),
                                            const SizedBox(width: 5,),
                                            Text(
                                              "4.8",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.blackColor),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Jane's Spa",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.text_color_light),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$ 300",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.hint_color),
                                            ),


                                            const SizedBox(width: 5,),
                                            Text(
                                              "2 hours",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14, color: AppColors.hint_color),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                      ],

                    )




                  ],
                ),

              )),












            ],
          ),
        ),
      ),
    );
  }
}
