import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizes.dart';

class CustomText extends Container {
  CustomText(
    String text, {
    Key key,
     size,
    width,
    underline = false,
    color,
    weight,
    strutStyle,
    textAlign,
    textDirection,
    locale,
    softWrap,
    overflow,
    textScaleFactor,
    maxLines,
    semanticsLabel,
    textWidthBasis,
    height,
    foreground,
    gradient,
    textHeightBehavior,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
  }) : super(
            key: key,
            width: width,
            margin: margin,
            padding: padding,
            decoration: BoxDecoration(gradient: gradient),
            child: Text(
              text,
              style: TextStyle(
                  decoration: underline ? TextDecoration.underline : null,
                  color: color,
                  height: height ?? 1,
                  foreground: foreground,
                  fontSize: size,
                  fontWeight: weight,
                  ),
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              locale: locale,
              softWrap: softWrap,
              overflow: overflow,
              textScaleFactor: textScaleFactor,
              maxLines: maxLines,
              semanticsLabel: semanticsLabel,
              textWidthBasis: textWidthBasis,
              textHeightBehavior: textHeightBehavior,
            ));

  CustomText.h1(String text,
      {Key key,
      Color color,
      bool underline = false,
      double width,
      FontWeight weight,
      TextAlign textAlign,
      Paint foreground,
      LinearGradient gradient,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      double height,
      int maxLines})
      : this(text,
            maxLines: maxLines,
            size: Sizes.fontSizes['h1'],
            padding: padding,
            width: width,
            margin: margin,
            height: height,
            color: color,
            gradient: gradient,
            foreground: foreground,
            weight: weight ?? FontWeight.w900,
            textAlign: textAlign,
            underline: underline);

  CustomText.h2(String text,
      {Key key,
      Color color,
      bool underline = false,
      double width,
      FontWeight weight,
      TextAlign textAlign,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      double height,
      int maxLines,
      overflow})
      : this(text,
            padding: padding,
            margin: margin,
            width: width,
            size: Sizes.fontSizes['h2'],
            color: color ?? Colors.black,
            weight: weight ?? FontWeight.w700,
            textAlign: textAlign,
            height: height,
            maxLines: maxLines,
            overflow: overflow,
            underline: underline);

  CustomText.h3(String text,
      {Key key,
      Color color,
      double width,
      FontWeight weight,
      bool underline = false,
      TextAlign textAlign,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      double height,
      overflow,
      int maxLines})
      : this(text,
            maxLines: maxLines,
            size: Sizes.fontSizes['h3'],
            width: width,
            padding: padding,
            margin: margin,
            height: height,
            color: color,
            weight: weight,
            textAlign: textAlign,
            overflow: overflow,
            underline: underline);

  CustomText.h4(
    String text, {
    Key key,
    double width,
    Color color,
    bool underline = false,
    FontWeight weight,
    TextAlign textAlign,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    double height,
    overflow,
    int maxLines,
  }) : this(text,
            padding: padding,
            width: width,
            margin: margin,
            size: Sizes.fontSizes['h4'],
            color: color ?? Colors.black26,
            weight: weight,
            height: height,
            textAlign: textAlign,
            maxLines: maxLines,
            overflow: overflow,
            underline: underline);

  CustomText.h5(String text,
      {Key key,
      Color color,
      double width,
      bool underline = false,
      FontWeight weight,
      TextAlign textAlign,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      double height,
      overflow,
      int maxLines})
      : this(text,
            maxLines: maxLines,
            width: width,
            size: Sizes.fontSizes['h5'],
            padding: padding,
            margin: margin,
            height: height,
            color: color,
            weight: weight,
            overflow: overflow,
            underline: underline,
            textAlign: textAlign);

  CustomText.h6(String text,
      {Key key,
      Color color,
      FontWeight weight,
      double width,
      bool underline = false,
      TextAlign textAlign,
      overflow,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      double height,
      int maxLines})
      : this(text,
            maxLines: maxLines,
            width: width,
            size: Sizes.fontSizes['h6'],
            padding: padding,
            margin: margin,
            height: height,
            overflow: overflow,
            color: color,
            weight: weight,
            underline: underline,
            textAlign: textAlign);
}
