import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

import '../../models/card_models.dart';
import '../../reusable_widgets/dividers.dart';
import '../../utils/colors/app_colors.dart';

class ReportCardWidget extends StatelessWidget {
  final StaffingReportModel staffingReportModel;

  const ReportCardWidget({
    super.key,
    required this.staffingReportModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 230,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          30,
        ),
        border: Border.all(
          color: CColors.darkBlueColor,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.doc_text,
                color: CColors.whiteColor,
                size: 40,
              ),
              5.pw,
              Expanded(
                flex: 2,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    staffingReportModel.title,
                    style: CustomTextStyles.white418,
                  ),
                ),
              ),
              5.pw,
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: Text(
                    staffingReportModel.time,
                    style: CustomTextStyles.white418,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          const CustomHorizontalDivider(),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              staffingReportModel.report,
              style: CustomTextStyles.white414,
            ),
          ),
        ],
      ),
    );
  }
}
