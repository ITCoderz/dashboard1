import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/models/card_models.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';

import '../../generated/assets.dart';
import '../../reusable_widgets/dividers.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class UpdatesCardWidget extends StatelessWidget {
  final PatientUpdateModel patientUpdateModel;

  const UpdatesCardWidget({
    super.key,
    required this.patientUpdateModel,
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
        color: CColors.darkBlueColor,
        borderRadius: BorderRadius.circular(
          30,
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
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.message_outlined,
                  color: CColors.darkBlueColor,
                  size: 30,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.mic_none_outlined,
                color: CColors.whiteColor,
                size: 15,
              ),
              15.pw,
              Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CColors.darkBlueSecondColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  Assets.iconsRollBackIcon,
                  height: 20,
                  width: 20,
                  color: CColors.whiteColor,
                ),
              ),
            ],
          ),
          20.ph,
          Expanded(
            child: Text(
              patientUpdateModel.update,
              style: CustomTextStyles.white414,
            ),
          ),
          const CustomHorizontalDivider(),
          20.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                patientUpdateModel.doctorName,
                style: CustomTextStyles.white414,
              ),
              Text(
                patientUpdateModel.time,
                style: CustomTextStyles.red414,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
