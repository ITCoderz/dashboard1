import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/reusable_widgets/dividers.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';

import '../../models/diagnosis_medication_model.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class DoctorActivityTileWidget extends StatelessWidget {
  final DiagnosisMedicationModel diagnosisMedicationModel;

  const DoctorActivityTileWidget({
    super.key,
    required this.diagnosisMedicationModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        20.ph,
        Text(
          diagnosisMedicationModel.title,
          style: CustomTextStyles.white516,
        ),
        10.ph,
        diagnosisMedicationModel.diagnosisMedicationActivityList.isNotEmpty
            ? Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CColors.containerDarkColor,
                ),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: diagnosisMedicationModel
                      .diagnosisMedicationActivityList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const CustomHorizontalDivider(),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              diagnosisMedicationModel
                                  .diagnosisMedicationActivityList[index].title,
                              style: CustomTextStyles.white414,
                            ),
                          ),
                          40.pw,
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: CColors.whiteColor,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            : 20.ph,
      ],
    );
  }
}
