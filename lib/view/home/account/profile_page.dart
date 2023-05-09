import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/res/components/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context).textTheme;
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
      child: CustomAppBar(text: 'Profile', txtcolor: AppColors.blackColor,iconData:Icons.arrow_back_rounded ,)),
      body: SingleChildScrollView(
        child: Container(
          width: _width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 45,
                    child: Image.network("https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-avatar-placeholder-abstract-white-blue-green-png-image_3918476.jpg"),
                    
                  ),
                  Positioned(
                    bottom: 10,
                      right: 0,
                      child: Icon(Icons.camera_alt_outlined,color: AppColors.icon_select_color,))
                ],
              ),
               Text("Maria Phillips ",style: _theme.bodyLarge,),
              const SizedBox(height: 10,),
              SizedBox(width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full Name ",style: _theme.bodyMedium?.copyWith(color: AppColors.icon_select_color),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide.none,
                        ),



                      ),

                    )



                  ],
                ),
              ),

              const SizedBox(height: 10,),
              SizedBox(width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Phone Number ",style: _theme.bodyMedium?.copyWith(color: AppColors.icon_select_color),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide.none,
                        ),



                      ),

                    )



                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email ",style: _theme.bodyMedium?.copyWith(color: AppColors.icon_select_color),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide.none,
                        ),



                      ),

                    )



                  ],
                ),
              ),

              const SizedBox(height: 10,),
              SizedBox(width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Country ",style: _theme.bodyMedium?.copyWith(color: AppColors.icon_select_color),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide.none,
                        ),



                      ),

                    )



                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location ",style: _theme.bodyMedium?.copyWith(color: AppColors.icon_select_color),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide.none,
                        ),



                      ),

                    )



                  ],
                ),
              ),

            ],
          ),


        ),
      ),

    );
  }
}
