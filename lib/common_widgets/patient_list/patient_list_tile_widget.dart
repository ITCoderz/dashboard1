import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/reusable_widgets/buttons/text_button.dart';
import 'package:gap_cure_dashboard/utils/gaps/gaps.dart';
import 'package:gap_cure_dashboard/utils/text_styles/text_styles.dart';

import '../../models/search_patient_model.dart';
import '../../utils/colors/app_colors.dart';

class PatientListTileWidget extends StatelessWidget {
  final SearchPatientModel searchPatientModel;

  const PatientListTileWidget({
    super.key,
    required this.searchPatientModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: CColors.whiteColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "${searchPatientModel.patientId} ${searchPatientModel.patientAddress}, ${searchPatientModel.patientName}",
              style: CustomTextStyles.black518,
            ),
          ),
         40.pw,
          CustomTextButton(
            text: "VIEW MORE",
            onPressedFunction: () {},
          ),
        ],
      ),
    );
  }
}
