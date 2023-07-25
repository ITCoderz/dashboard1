import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomDropDown extends StatelessWidget {
  final Function(String?)? onChanged;
  final List mappingList;
  final String hintText;
  final double height, width;
  final Color fillColor;
  final bool isIconKeyBoardArrowDown, isIconsDropDown, isIconFilter, needBorder;

  const CustomDropDown({
    super.key,
    this.height = 35,
    this.width = 100,
    this.fillColor = Colors.transparent,
    required this.onChanged,
    required this.hintText,
    required this.mappingList,
    this.needBorder = false,
    this.isIconKeyBoardArrowDown = true,
    this.isIconsDropDown = false,
    this.isIconFilter = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
            borderSide: needBorder
                ? BorderSide(
                    color: CColors.lightBlueColor.withOpacity(
                      0.32,
                    ),
                  )
                : BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: needBorder
                ? BorderSide(
                    color: CColors.lightBlueColor.withOpacity(
                      0.32,
                    ),
                  )
                : BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: needBorder
                ? BorderSide(
                    color: CColors.lightBlueColor.withOpacity(
                      0.32,
                    ),
                  )
                : BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        isExpanded: true,
        hint: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            hintText,
            style: CustomTextStyles.white414,
          ),
        ),
        items: mappingList.map(
          (item) {
            return DropdownMenuItem<String>(
              value: item,
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  item,
                  style: CustomTextStyles.white416,
                ),
              ),
            );
          },
        ).toList(),
        isDense: true,
        menuItemStyleData: const MenuItemStyleData(
          overlayColor: MaterialStatePropertyAll(
            Colors.transparent,
          ),
        ),
        validator: (value) {
          return null;
        },
        onChanged: onChanged,
        buttonStyleData: const ButtonStyleData(
          height: 60,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            isIconsDropDown
                ? Icons.arrow_drop_down_outlined
                : isIconKeyBoardArrowDown
                    ? Icons.keyboard_arrow_down_rounded
                    : Icons.filter_alt_outlined,
            color: CColors.whiteColor,
          ),
          iconSize: 18,
        ),
        dropdownStyleData: DropdownStyleData(
          offset: const Offset(0, -10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: CColors.lightBlueColor,
              ),
              color: CColors.primaryColor),
        ),
      ),
    );
  }
}
