import '../models/fifty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';

// ignore: must_be_immutable
class FiftyItemWidget extends StatelessWidget {
  FiftyItemWidget(
    this.fiftyItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FiftyItemModel fiftyItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fiftyItemModelObj.amam!,
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Be Vietnam',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (fiftyItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primaryContainer,
      selectedColor: appTheme.orange200,
      shape: (fiftyItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
