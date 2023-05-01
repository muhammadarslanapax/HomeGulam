import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Oppointment extends StatefulWidget {
  const Oppointment({Key? key}) : super(key: key);

  @override
  State<Oppointment> createState() => _OppointmentState();
}

class _OppointmentState extends State<Oppointment> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: _width,
                height: _height * .3,
                color: AppColors.whiteColor,
                child: Image.network(
                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 18,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: AppColors.notification_icon_bg,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 17,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 18,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: AppColors.notification_icon_bg,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.share_outlined,
                    size: 22,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 12, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Party Hair Style",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor),
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 14,
                      initialRating: 1.4,
                      minRating: 1,
                      updateOnDrag: false,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.all(0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.8",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jenny Hair's Salon",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text_color_light),
                ),
                Text(
                  "2 km away",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.icon_select_color),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 13, top: 10),
            child: Row(
              children: [
                Text(
                  "\$ 60",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.icon_select_color),
                ),
                const SizedBox(
                  width: 55,
                ),
                Text(
                  "2 hours",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.icon_select_color),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 13, top: 7),
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 49,
                  decoration: BoxDecoration(
                      color: AppColors.notification_icon_bg,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.phone_outlined,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Container(
                  width: 45,
                  height: 49,
                  decoration: BoxDecoration(
                      color: AppColors.notification_icon_bg,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.message_outlined,
                    size: 25,
                  ),
                ),
                Flexible(child: Container()),
                Container(
                  width: 45,
                  height: 49,
                  decoration: BoxDecoration(
                      color: AppColors.notification_icon_bg,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.favorite_outline,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Booking Method : ",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: AppColors.blackColor)),
          ),
          const SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Text(
              "Booking through Slot",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.text_color_light),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("About Service",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: AppColors.blackColor)),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22),
            child: RichText(
              text: TextSpan(
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColors.text_color_light),
                  text: "f df fd df f df f f f f df df fd df"
                      " df fd df df df df df df fds f"
                      " df df df df df fd sf df df dsf "
                      " fd df df dfsdfeef sdf dsf sd"
                      " d fdsf  df df df df f dsf fds"
                      "d f sdf dsf dsf dsf sdf dsf dsf df dsf ds dsf dsf dsf fd"
                      "f dfs df dsf dsf dsfsfsdf sd sdf fd  f df dsf df sf ds sdf "
                      " fdf sdf df df dsfdsf fefef df efsef ew sd sfd f"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12, right: 12, top: 4),
            width: _width,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.icon_select_color),
            child: Center(
              child: Text("Book an oppintment",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: AppColors.whiteColor)),
            ),
          )
        ],
      ),
    ));
  }
}
