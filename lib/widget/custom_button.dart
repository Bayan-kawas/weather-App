import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../font_styles.dart';
import '../sizes.dart';
import 'custom_text.dart';

class CustomButton extends TextButton {
  CustomButton(
      {double height,
      double width,
      BorderRadiusGeometry borderRadius,
      Color color,
      Color textColor,
      Gradient gradient,
      Key key,
      Function onPressed,
      VoidCallback onLongPress,
      ButtonStyle style,
      FocusNode focusNode,
      bool autoFocus = false,
      Clip clipBehavior = Clip.none,
      Widget child,
      String text,
      EdgeInsetsGeometry padding,
      EdgeInsetsGeometry margin,
        List<BoxShadow>  boxShadow,
      double minHeight = 40,
      bool isEnabled = true})
      : assert(text != null || child != null),
        super(
          key: key,
          onPressed: isEnabled && (onPressed != null)
              ? () {
                  onPressed();
                }
              : null,
          onLongPress: onLongPress,
          focusNode: focusNode,
          autofocus: autoFocus,
          clipBehavior: clipBehavior,
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          child: Container(
            width: width ?? Sizes.screenWidth,
            height: height ?? 45.h,
            constraints: BoxConstraints(minHeight: minHeight),
            padding: padding,
            margin: margin,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              boxShadow: boxShadow??boxShadow ,
              borderRadius: borderRadius ??
                  BorderRadius.circular(30.r),
              color: isEnabled ? color : Colors.grey,
              gradient: isEnabled
                  ? color == null
                      ? gradient
                      : null
                  : null,
            ),
            child: child ??
                CustomText.h4(
                  text,
                  color: textColor ??Colors.white,
                  weight: FontStyles.fontWeightMedium,
                ),
          ),
        );
}
