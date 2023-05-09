import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_rounded),color: Colors.black,),
        centerTitle: true,
        elevation: 0,
        title: Text("Settings",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),

          child: Column(
            children: [
              SizedBox(height: 10,),

              ListTile(title: Text("System Notifications",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                subtitle: Text("Receive services and booking updates",style: TextStyle(fontSize: 12,color: AppColors.text2_color,),),
                trailing:  SizedBox(
                  width: 30,
                  child: Transform.scale(
                    scale: 1.0,
                    child: Switch(
                      inactiveTrackColor: AppColors.text3_color,
                      inactiveThumbColor: AppColors.introTextColor,
                      activeTrackColor: AppColors.locationBoxColor,
                        activeColor: AppColors.introTextColor,
                        value: switch1,
                        onChanged: (value){
                          setState(() {
                            switch1 =value;
                          });
                        }),
                  ),
                ),
              ),

              ListTile(title: Text("Promo Messages",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                subtitle: Text("Receive updates on great deals and steals ",style: TextStyle(fontSize: 12,color: AppColors.text2_color,),),
                trailing:  SizedBox(
                  width: 30,
                  child: Transform.scale(
                    scale: 1.0,
                    child: Switch(
                        inactiveTrackColor: AppColors.text3_color,
                        inactiveThumbColor: AppColors.introTextColor,
                        activeTrackColor: AppColors.locationBoxColor,
                        activeColor: AppColors.introTextColor,
                        value: switch2,
                        onChanged: (value){
                          setState(() {
                            switch2 =value;
                          });
                        }),
                  ),
                ),
              ),

              ListTile(title: Text("Chats",style: GoogleFonts.poppins(fontWeight: FontWeight.w500) ,),
                subtitle: Text("Receive in-app messages on your phone ",style: TextStyle(fontSize: 12,color: AppColors.text2_color,),),
                trailing:  SizedBox(
                  width: 30,
                  child: Transform.scale(
                    scale: 1.0,
                    child: Switch(
                        inactiveTrackColor: AppColors.text3_color,
                        inactiveThumbColor: AppColors.introTextColor,
                        activeTrackColor: AppColors.locationBoxColor,
                        activeColor: AppColors.introTextColor,
                        value: switch3,
                        onChanged: (value){
                          setState(() {
                            switch3 =value;
                          });
                        }),
                  ),
                ),
              ),

              ListTile(title: Text("Location Visibility",style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                subtitle: Text("Allow location visibility to everyone ",style: TextStyle(fontSize: 12,color: AppColors.text2_color,),),
                trailing:  SizedBox(
                  width: 30,
                  child: Transform.scale(
                    scale: 1.0,
                    child: Switch(
                        inactiveTrackColor: AppColors.text3_color,
                        inactiveThumbColor: AppColors.introTextColor,
                        activeTrackColor: AppColors.locationBoxColor,
                        activeColor: AppColors.introTextColor,
                        value: switch4,
                        onChanged: (value){
                          setState(() {
                            switch4 =value;
                          });
                        }),
                  ),
                ),
              ),

              ListTile(title: Text(" Help Center",style: GoogleFonts.poppins(color: AppColors.introTextColor,fontSize: 18,fontWeight: FontWeight.w500),),),

              ListTile(title: Text(" Log Out",style: GoogleFonts.poppins(color: AppColors.introTextColor,fontSize: 18,fontWeight: FontWeight.w500),),)


            ],
            

          ),

        ),
      ),

    );
  }
}
