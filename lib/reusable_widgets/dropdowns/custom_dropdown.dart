import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';

class CustomDropDown extends StatelessWidget {
  final Function(String?)? onChanged;
  final List mappingList;
  final String hintText;
  final double height, width;
  final Color fillColor;

  const CustomDropDown(
      {super.key,
      this.height = 35,
      this.width = 100,
      this.fillColor = CColors.blackColor,
      required this.onChanged,
      required this.hintText,
      required this.mappingList});

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
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
        isExpanded: true,
        hint: FittedBox(
          child: Text(
            hintText,
            // style: CCustomTextStyles.black610,
          ),
        ),
        items: mappingList
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      item,
                      // style: CCustomTextStyles.black610,
                    ),
                  ),
                ))
            .toList(),
        isDense: true,
        menuItemStyleData: const MenuItemStyleData(
          // overlayColor: MaterialStatePropertyAll(
          //    CColors.cardColor,
          // ),
        ),
        validator: (value) {
          return null;
        },
        onChanged: onChanged,
        buttonStyleData: const ButtonStyleData(
          height: 60,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: CColors.blackColor,
          ),
          iconSize: 18,
        ),
        dropdownStyleData: DropdownStyleData(
          offset: const Offset(0, -10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
