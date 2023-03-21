import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/employe_card.dart';
import 'package:flutter_lesson3/features/employe/presentation/widgets/employe_listView.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/constants/text_helper.dart';
import 'package:flutter_lesson3/internal/helpers/bottom_sheet_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/phone_card.dart';
import '../widgets/search_widget.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHeler.backGround,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 26.r, right: 16.r, left: 16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Сотрудники",
                    style: TextHelper.w700fs20.copyWith(
                      color: ColorHeler.textBlack,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const SearchWidget(),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
            EmployeListview(
              text: "У кого сегодня день рождения",
              textColor: ColorHeler.primary,
            ),
            EmployeListview(
              text: "У кого завтра день рождения",
              textColor: ColorHeler.textBlack,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: employeModelList.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 16.r,
                ),
                itemBuilder: (context, index) => EmployeCard(
                  employeModel: employeModelList[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
