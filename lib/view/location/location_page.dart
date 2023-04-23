import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../res/color.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 56,
              ),
              SvgPicture.asset("assets/images/splash_image.svg"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Home Gulam",
                style: TextStyle(
                    color: Color(0XFF666666),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Select your country and add your location",
                  style: TextStyle(
                      color: AppColors.locationBoxTextColor,
                      fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.locationBoxColor,
                    borderRadius: BorderRadius.circular(6)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        
                        'Paris France',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.locationBoxTextColor,
                        ),
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      height: 50,
                      width: double.infinity,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.locationBoxColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: AppColors.locationBoxTextColor,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Select weather you are a business or Customer",
                  style: TextStyle(
                      color: AppColors.locationBoxTextColor,
                      fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.locationBoxColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Business/Shop",
                      style: TextStyle(
                        color: AppColors.locationBoxTextColor,
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: AppColors.locationBoxColor,
                    borderRadius: BorderRadius.circular(6)),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Customer",
                      style: TextStyle(
                        color: AppColors.locationBoxTextColor,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
