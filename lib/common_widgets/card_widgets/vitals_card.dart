import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

import '../../models/card_models.dart';
import '../../reusable_widgets/dividers.dart';
import '../../utils/colors/app_colors.dart';

class VitalsCardWidget extends StatelessWidget {
  final VitalsModel vitalsModel;

  const VitalsCardWidget({
    super.key,
    required this.vitalsModel,
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
        borderRadius: BorderRadius.circular(
          30,
        ),
        border: Border.all(
          color: CColors.darkBlueColor,
        ),
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: CColors.vitalsBackgroundColorGradientColor,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CColors.redColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  CupertinoIcons.exclamationmark,
                  color: CColors.whiteColor,
                  size: 40,
                ),
              ),
              10.pw,
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    vitalsModel.vitalTitle,
                    style: CustomTextStyles.white418,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          const CustomHorizontalDivider(),
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                vitalsModel.time,
                style: CustomTextStyles.white414,
              ),
              Text(
                vitalsModel.timeRemaining,
                style: CustomTextStyles.red414,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
