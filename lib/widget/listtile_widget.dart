import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_project/app_utils/app_utils.dart';

class ListTileWidget extends StatelessWidget {
  final String? title;
  final String? value;
  const ListTileWidget({super.key,  this.title,  this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          Expanded(
            child: Text(title??''),
            flex: 4,
          ),
          Expanded(
            child: Text(value??'', style: AppUtils.textblackRobotoBold14),
            flex: 5,
          )
        ],
      ),
    );
  }
}
