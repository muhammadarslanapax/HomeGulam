import 'package:ecommerce_app/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/color.dart';

class CustomListTile extends StatelessWidget {

  List<String> list;
   CustomListTile({
    super.key,
     required this.list
  });

  @override
  Widget build(BuildContext context) {
    return

      ListView.builder(
        itemCount: list.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.oppointmentPage);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 8),
                height: 131,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.notification_icon_bg,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 104,
                      height: 107,
                      margin: const EdgeInsets.only(
                          top: 12, bottom: 10, left: 9),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 35.0, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              "Jenny's Hair Salon",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.text_color_light),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ 60",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                        AppColors.icon_select_color),
                                  ),
                                  Text(
                                    "1 hours",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                        AppColors.icon_select_color),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: AppColors.star_color,
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
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
  }}