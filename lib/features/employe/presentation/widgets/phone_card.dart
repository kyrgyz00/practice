import 'package:flutter/material.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_lesson3/internal/helpers/url_launcher_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhondeCard extends StatelessWidget {
  final String phoneNumber;
  final String phoneNumberType;
  const PhondeCard({
    Key? key,
    required this.phoneNumber,
    required this.phoneNumberType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              phoneNumberType,
              style: TextHelper.w400fs12.copyWith(
                color: ColorHeler.textGrey,
              ),
            ),
            Text(
              phoneNumber,
              style: TextHelper.w500fs16.copyWith(
                color: ColorHeler.textBlack,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () async {
            await makePhoneCall(phoneNumber);
          },
          icon: Icon(
            Icons.phone,
            size: 16.r,
            color: ColorHeler.green,
          ),
        )
      ],
    );
  }
}
