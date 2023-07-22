import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/utils/alignment/widget_alignment.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/sizes/platform_sizes.dart';
import '../../../utils/text_styles/text_styles.dart';
import '../../circular_container.dart';

class GardenersAttributesTable extends StatelessWidget {
  final List<dynamic> allGardenersDisplayList;

  const GardenersAttributesTable({
    super.key,
    required this.allGardenersDisplayList,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      isHorizontalScrollBarVisible: true,
      minWidth: PlatformSizes.minLargeScreenWidth,
      columnSpacing: 30,
      border: const TableBorder(
        horizontalInside: BorderSide(
          width: 1,
          color: CColors.primaryColor,
        ),
      ),
      headingTextStyle: CCustomTextStyles.black610,
      dataTextStyle: CCustomTextStyles.black410,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            "Name",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Set Up ",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Training",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "CMG App",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Van",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Van Decals",
            textAlign: TextAlign.left,
          ),
        ),
        DataColumn(
          label: Text(
            "Equipment",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "Insurance",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "DBS",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "Uniform",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "Flyers",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "Live Portal ",
            textAlign: TextAlign.center,
          ),
        ),
        DataColumn(
          label: Text(
            "",
            textAlign: TextAlign.center,
          ),
        ),
      ],
      rows: allGardenersDisplayList
          .map(
            (data) => DataRow(
              cells: [
                DataCell(
                  Text(
                    data.gardenerName,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.setUp,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.training,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.cmgApp,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.van,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.vanDecals,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.equipment,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.insurance,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.dbs,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.uniform,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.flyers,
                  ),
                ),
                DataCell(
                  StatusComponent(
                    status: data.livePortal,
                  ),
                ),
                DataCell(StatusComponent(
                  status: data.livePortal,
                )),
              ],
            ),
          )
          .toList(),
    );
  }
}

class StatusComponent extends StatelessWidget {
  final bool status;

  const StatusComponent({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularContainer(
      height: 15,
      width: 15,
      backgroundColor: null,
    ).alignWidget(
      alignment: Alignment.center,
    );
  }
}
