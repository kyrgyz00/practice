import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/phone_card.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void customModalBottomSheet(BuildContext context,
    {required String name, required PhoneNumbers numbers}) {
  showModalBottomSheet(
      backgroundColor: ColorHeler.white,
      barrierColor: ColorHeler.barrierColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(23.r),
          height: 343.h,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Позвонить",
                    style: TextHelper.w700fs20.copyWith(
                      color: ColorHeler.textBlack,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.cancel_rounded,
                      color: ColorHeler.lGray,
                      size: 30.r,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 262.w,
                child: Text(
                  name,
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              PhondeCard(
                phoneNumber: numbers.mainPhone,
                phoneNumberType: "Телефон основной",
              ),
              PhondeCard(
                phoneNumber: numbers.mainPhone,
                phoneNumberType: "Телефон основной",
              ),
              PhondeCard(
                phoneNumber: numbers.mainPhone,
                phoneNumberType: "Телефон основной",
              )
            ],
          ),
        );
      });
}
