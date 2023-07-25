import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../models/data_list_table_model.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';

class PrimaryDataListTable extends StatelessWidget {
  final List<DataListPrimaryTableModel> allDataList;

  const PrimaryDataListTable({
    super.key,
    required this.allDataList,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      isHorizontalScrollBarVisible: false,
      minWidth: PlatformSizes.minMediumScreenWidth,
      border: TableBorder(
        horizontalInside: BorderSide(
          width: 0.5,
          color: CColors.lightBlueColor.withOpacity(0.32),
        ),
        verticalInside: BorderSide(
          width: 1,
          color: CColors.lightBlueColor.withOpacity(0.32),
        ),
      ),
      dividerThickness: 0.5,
      columnSpacing: 10,
      headingTextStyle: CustomTextStyles.white416,
      dataTextStyle: CustomTextStyles.white416,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            "ID",
            textAlign: TextAlign.center,
          ),

        ),
        DataColumn(
          label: Text(
            "Name",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "-",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "-",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "-",
            textAlign: TextAlign.left,
          ),
        ),
      ],
      rows: allDataList
          .map(
            (data) => DataRow(
              cells: [
                DataCell(
                  Text(
                    data.id,
                    style: CustomTextStyles.lightBlue414,
                  ),
                ),
                DataCell(
                  Text(
                    data.name,
                  ),
                ),
                DataCell(
                  Text(
                    data.thirdColumn,
                  ),
                ),
                DataCell(
                  Text(
                    data.fourthColumn,
                  ),
                ),
                DataCell(
                  Text(
                    data.fifthColumn,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
