import 'package:flutter/material.dart';

import '../sizes.dart';


class CustomImage extends Container {
  CustomImage(String path,
      {Key key,
       BoxShadow shadow,
      bundle,
      frameBuilder,
      errorBuilder,
      semanticLabel,
      excludeFromSemantics = false,
      scale,
      width,
      height,
      color,
      colorBlendMode,
      fit,
      alignment = Alignment.center,
      repeat = ImageRepeat.noRepeat,
      centerSlice,
      matchTextDirection = false,
      gaplessPlayback = false,
      isAntiAlias = false,
      package,
      filterQuality = FilterQuality.low,
      cacheWidth,
      cacheHeight,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      })
      : super(key: key,
            margin: margin,
            padding: padding,
            decoration: BoxDecoration(boxShadow: shadow!=null ?[shadow]:null),
            child: Image.asset(
              path,
              bundle: bundle,
              cacheHeight: cacheHeight,
              cacheWidth: cacheWidth,
              package: package,
              scale: scale,
              key: key,
              frameBuilder: frameBuilder,
              errorBuilder: errorBuilder,
              semanticLabel: semanticLabel,
              excludeFromSemantics: excludeFromSemantics,
              width: width,
              height: height,
              color: color,
              colorBlendMode: colorBlendMode,
              fit: fit,
              alignment: alignment,
              repeat: repeat,
              centerSlice: centerSlice,
              matchTextDirection: matchTextDirection,
              gaplessPlayback: gaplessPlayback,
              isAntiAlias: isAntiAlias,
              filterQuality: filterQuality,
            ));

  CustomImage.s1(String path,
      {Color color,
      BoxFit fit,
      MainAxisAlignment imageAndTitleAlignment,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
     })
      : this(path,
            height: Sizes.iconsSizes['s1'],
            width: Sizes.iconsSizes['s1'],
            color: color,
            padding: padding,
            margin: margin,
            );

  CustomImage.s2(String path,
      {Color color,
      BoxFit fit,
            EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
     })
      : this(path,
            height: Sizes.iconsSizes['s2'],
            width: Sizes.iconsSizes['s2'],
            color: color,
            padding: padding,
            margin: margin,);

  CustomImage.s3(String path,
      {Color color,
      BoxFit fit,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      })
      : this(path,
            height: Sizes.iconsSizes['s3'],
            width: Sizes.iconsSizes['s3'],
            color: color,
            padding: padding,
            margin: margin,);

  CustomImage.s4(String path,
      {Color color,
      BoxFit fit,

      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      })
      : this(path,
            height: Sizes.iconsSizes['s4'],
            width: Sizes.iconsSizes['s4'],
            color: color,

            padding: padding,
            margin: margin,
            );

  CustomImage.s5(String path,
      {Color color,
      BoxFit fit,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,
      })
      : this(path,
                  height: Sizes.iconsSizes['s5'],
            width: Sizes.iconsSizes['s5'],
            color: color,
            padding: padding,
            margin: margin,
           );

  CustomImage.s6(String path,
      {Color color,
      BoxFit fit,
      EdgeInsetsGeometry margin,
      EdgeInsetsGeometry padding,})
      : this(path,
            height: Sizes.iconsSizes['s6'],
            width: Sizes.iconsSizes['s6'],
            color: color,
            padding: padding,
            margin: margin,
            );
}
