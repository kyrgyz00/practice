import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/data/models/employe_model.dart';
import 'package:flutter_lesson3/features/employe/presentation/screens/employ_screen.dart';
import 'package:flutter_lesson3/internal/constants/color_helper.dart';
import 'package:flutter_lesson3/internal/helpers/bottom_sheet_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeCard extends StatelessWidget {
  final EmployeModel employeModel;
  const EmployeCard({
    Key? key,
    required this.employeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeScreen(name: employeModel.name),
            ));
      },
      child: Container(
        decoration: BoxDecoration(color: ColorHeler.white),
        height: 64.h,
        padding: EdgeInsets.symmetric(
          vertical: 11,
          horizontal: 16.r,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 21.r,
            ),
            Text(employeModel.name),
            IconButton(
                onPressed: () {
                  customModalBottomSheet(
                    context,
                    name: employeModel.name,
                    numbers: employeModel.numbers,
                  );
                },
                icon: const Icon(
                  Icons.phone,
                ))
          ],
        ),
      ),
    );
  }
}
