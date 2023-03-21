import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeListview extends StatelessWidget {
  final String text;
  final Color textColor;
  const EmployeListview({
    Key? key,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.r),
          child: Text(
            text,
            style: TextHelper.w700fs16.copyWith(color: textColor),
          ),
        ),
        Container(
          height: 87.r,
          padding: EdgeInsets.only(top: 13.r, bottom: 14.r, left: 16.r),
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 15.r,
                );
              },
              itemCount: employeModelList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                log(employeModelList[index].avatarUrl);
                return Container(
                  width: 60.r,
                  height: 60.r,
                  decoration: BoxDecoration(
                      color: ColorHeler.primary,
                      border: Border.all(
                        width: 2.r,
                        color: ColorHeler.primary,
                      ),
                      borderRadius: BorderRadius.circular(60.r),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          employeModelList[index].avatarUrl,
                        ),
                      )),
                );
              }),
        ),
      ],
    );
  }
}
