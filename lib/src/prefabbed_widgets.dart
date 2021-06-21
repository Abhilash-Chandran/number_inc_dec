import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

/// A set of pre-fabricated widgets based on [NumberInputWithIncrementDecrement].
///
/// [NumberInputPrefabbed.squaredButtons]
///
/// ![NumberInputPrefabbed.squaredButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_squared.gif)
///
///
/// [NumberInputPrefabbed.leafyButtons]
///
/// ![NumberInputPrefabbed.leafyButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_leaf.gif)
///
///
/// [NumberInputPrefabbed.directionalButtons]
///
/// ![NumberInputPrefabbed.directionalButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_directional.gif)
///
///
/// [NumberInputPrefabbed.roundedEdgeButtons]
///
/// ![NumberInputPrefabbed.roundedEdgeButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_roundEdge.gif)
///
///
/// [NumberInputPrefabbed.roundedButtons]
///
/// ![NumberInputPrefabbed.roundedButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_rounded.gif)
///
class NumberInputPrefabbed extends NumberInputWithIncrementDecrement {
  /// {@template prefab_doc}
  /// A pre-fabricated [NumberInputWithIncrementDecrement] widget with the
  /// increment/decrement buttons decorated as
  /// {@endtemplate}
  ///
  /// {@macro prefab_doc} squared buttons.
  ///
  /// ![NumberInputPrefabbed.squaredButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_squared.gif)
  ///
  NumberInputPrefabbed.squaredButtons({
    required TextEditingController controller,
    Key? key,
    bool enabled = true,
    ButtonArrangement buttonArrangement = ButtonArrangement.rightEnd,
    num min = 0,
    num max = double.infinity,
    num initialValue = 0,
    num incDecFactor = 1,
    bool isInt = true,
    AutovalidateMode autovalidateMode = AutovalidateMode.always,
    bool enableMinMaxClamping = false,
    InputDecoration? numberFieldDecoration,
    Decoration widgetContainerDecoration = const BoxDecoration(),
    FormFieldValidator<String>? validator,
    TextStyle? style,
    IconData incIcon = Icons.arrow_drop_up,
    IconData decIcon = Icons.arrow_drop_down,
    int fractionDigits = 2,
    double scaleWidth = 1.0,
    double scaleHeight = 1.0,
    double incIconSize = 28,
    double decIconSize = 28,
    Color? decIconColor,
    Color? incIconColor,
    DiffIncDecCallBack? onDecrement,
    DiffIncDecCallBack? onIncrement,
    ValueCallBack? onSubmitted,
    ValueCallBack? onChanged,
    bool separateIcons = false,
    Color incDecBgColor = Colors.lightGreen,
    TextAlign textAlign = TextAlign.center,
  }) : super(
          controller: controller,
          key: key,
          enabled: enabled,
          min: min,
          max: max,
          initialValue: initialValue,
          incDecFactor: incDecFactor,
          isInt: isInt,
          autovalidateMode: autovalidateMode,
          enableMinMaxClamping: enableMinMaxClamping,
          buttonArrangement: buttonArrangement,
          numberFieldDecoration: numberFieldDecoration,
          widgetContainerDecoration: widgetContainerDecoration,
          validator: validator,
          style: style,
          incIcon: incIcon,
          decIcon: decIcon,
          fractionDigits: fractionDigits,
          scaleHeight: scaleHeight,
          scaleWidth: scaleWidth,
          incIconSize: incIconSize,
          decIconSize: decIconSize,
          decIconColor: decIconColor,
          incIconColor: incIconColor,
          onDecrement: onDecrement,
          onIncrement: onIncrement,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          separateIcons: separateIcons,
          incDecBgColor: incDecBgColor,
          incIconDecoration: BoxDecoration(
            color: incDecBgColor,
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          decIconDecoration: BoxDecoration(
            color: incDecBgColor,
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          textAlign: textAlign,
        );

  /// {@macro prefab_doc} leaf like buttons.
  ///
  /// ![NumberInputPrefabbed.leafyButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_leaf.gif)
  ///
  NumberInputPrefabbed.leafyButtons({
    required TextEditingController controller,
    Key? key,
    bool enabled = true,
    ButtonArrangement buttonArrangement = ButtonArrangement.rightEnd,
    num min = 0,
    num max = double.infinity,
    num initialValue = 0,
    num incDecFactor = 1,
    bool isInt = true,
    AutovalidateMode autovalidateMode = AutovalidateMode.always,
    bool enableMinMaxClamping = false,
    InputDecoration? numberFieldDecoration,
    Decoration widgetContainerDecoration = const BoxDecoration(),
    FormFieldValidator<String>? validator,
    TextStyle? style,
    IconData incIcon = Icons.arrow_drop_up,
    IconData decIcon = Icons.arrow_drop_down,
    int fractionDigits = 2,
    double scaleWidth = 1.0,
    double scaleHeight = 1.0,
    double incIconSize = 28,
    double decIconSize = 28,
    Color? decIconColor,
    Color? incIconColor,
    DiffIncDecCallBack? onDecrement,
    DiffIncDecCallBack? onIncrement,
    ValueCallBack? onSubmitted,
    ValueCallBack? onChanged,
    bool separateIcons = true,
    Color incDecBgColor = Colors.lightGreen,
    TextAlign textAlign = TextAlign.center,
  }) : super(
          controller: controller,
          key: key,
          enabled: enabled,
          min: min,
          max: max,
          initialValue: initialValue,
          incDecFactor: incDecFactor,
          isInt: isInt,
          autovalidateMode: autovalidateMode,
          enableMinMaxClamping: enableMinMaxClamping,
          buttonArrangement: buttonArrangement,
          numberFieldDecoration: numberFieldDecoration,
          widgetContainerDecoration: widgetContainerDecoration,
          validator: validator,
          style: style,
          incIcon: incIcon,
          decIcon: decIcon,
          fractionDigits: fractionDigits,
          scaleHeight: scaleHeight,
          scaleWidth: scaleWidth,
          incIconSize: incIconSize,
          decIconSize: decIconSize,
          decIconColor: decIconColor,
          incIconColor: incIconColor,
          onDecrement: onDecrement,
          onIncrement: onIncrement,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          separateIcons: separateIcons,
          incDecBgColor: incDecBgColor,
          incIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: buttonArrangement == ButtonArrangement.rightEnd
                ? BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          decIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: buttonArrangement == ButtonArrangement.rightEnd
                ? BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )
                : BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          textAlign: textAlign,
        );

  /// {@macro prefab_doc} directional buttons.
  ///
  /// ![NumberInputPrefabbed.directionalButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_directional.gif)
  ///
  NumberInputPrefabbed.directionalButtons({
    required TextEditingController controller,
    Key? key,
    bool enabled = true,
    ButtonArrangement buttonArrangement = ButtonArrangement.rightEnd,
    num min = 0,
    num max = double.infinity,
    num initialValue = 0,
    num incDecFactor = 1,
    bool isInt = true,
    AutovalidateMode autovalidateMode = AutovalidateMode.always,
    bool enableMinMaxClamping = false,
    InputDecoration? numberFieldDecoration,
    Decoration widgetContainerDecoration = const BoxDecoration(),
    FormFieldValidator<String>? validator,
    TextStyle? style,
    IconData incIcon = Icons.arrow_drop_up,
    IconData decIcon = Icons.arrow_drop_down,
    int fractionDigits = 2,
    double scaleWidth = 1.0,
    double scaleHeight = 1.0,
    double incIconSize = 28,
    double decIconSize = 28,
    Color? decIconColor,
    Color? incIconColor,
    DiffIncDecCallBack? onDecrement,
    DiffIncDecCallBack? onIncrement,
    ValueCallBack? onSubmitted,
    ValueCallBack? onChanged,
    bool separateIcons = true,
    Color incDecBgColor = Colors.lightGreen,
    TextAlign textAlign = TextAlign.center,
  }) : super(
          controller: controller,
          key: key,
          enabled: enabled,
          min: min,
          max: max,
          initialValue: initialValue,
          incDecFactor: incDecFactor,
          isInt: isInt,
          autovalidateMode: autovalidateMode,
          enableMinMaxClamping: enableMinMaxClamping,
          buttonArrangement: buttonArrangement,
          numberFieldDecoration: numberFieldDecoration,
          widgetContainerDecoration: widgetContainerDecoration,
          validator: validator,
          style: style,
          incIcon: incIcon,
          decIcon: decIcon,
          fractionDigits: fractionDigits,
          scaleHeight: scaleHeight,
          scaleWidth: scaleWidth,
          incIconSize: incIconSize,
          decIconSize: decIconSize,
          decIconColor: decIconColor,
          incIconColor: incIconColor,
          onDecrement: onDecrement,
          onIncrement: onIncrement,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          separateIcons: separateIcons,
          incDecBgColor: incDecBgColor,
          incIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          decIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          textAlign: textAlign,
        );

  /// {@macro prefab_doc} rounded edge buttons.
  ///
  /// ![NumberInputPrefabbed.roundedEdgeButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_roundEdge.gif)
  ///
  NumberInputPrefabbed.roundedEdgeButtons({
    required TextEditingController controller,
    Key? key,
    bool enabled = true,
    ButtonArrangement buttonArrangement = ButtonArrangement.rightEnd,
    num min = 0,
    num max = double.infinity,
    num initialValue = 0,
    num incDecFactor = 1,
    bool isInt = true,
    AutovalidateMode autovalidateMode = AutovalidateMode.always,
    bool enableMinMaxClamping = true,
    InputDecoration? numberFieldDecoration,
    Decoration widgetContainerDecoration = const BoxDecoration(),
    FormFieldValidator<String>? validator,
    TextStyle? style,
    IconData incIcon = Icons.arrow_drop_up,
    IconData decIcon = Icons.arrow_drop_down,
    int fractionDigits = 2,
    double scaleWidth = 1.0,
    double scaleHeight = 1.0,
    double incIconSize = 27,
    double decIconSize = 27,
    Color? decIconColor,
    Color? incIconColor,
    DiffIncDecCallBack? onDecrement,
    DiffIncDecCallBack? onIncrement,
    ValueCallBack? onSubmitted,
    ValueCallBack? onChanged,
    bool separateIcons = true,
    Color incDecBgColor = Colors.lightGreen,
    TextAlign textAlign = TextAlign.center,
  }) : super(
          controller: controller,
          key: key,
          enabled: enabled,
          min: min,
          max: max,
          initialValue: initialValue,
          incDecFactor: incDecFactor,
          isInt: isInt,
          autovalidateMode: autovalidateMode,
          enableMinMaxClamping: enableMinMaxClamping,
          buttonArrangement: buttonArrangement,
          widgetContainerDecoration: widgetContainerDecoration,
          validator: validator,
          style: style,
          incIcon: incIcon,
          decIcon: decIcon,
          fractionDigits: fractionDigits,
          scaleHeight: scaleHeight,
          scaleWidth: scaleWidth,
          incIconSize: incIconSize,
          decIconSize: decIconSize,
          decIconColor: decIconColor,
          incIconColor: incIconColor,
          onDecrement: onDecrement,
          onIncrement: onIncrement,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          separateIcons: separateIcons,
          incDecBgColor: incDecBgColor,
          numberFieldDecoration:
              buttonArrangement == ButtonArrangement.rightEnd ||
                      buttonArrangement == ButtonArrangement.leftEnd
                  ? InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            buttonArrangement == ButtonArrangement.rightEnd
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  )
                                : BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                      ),
                    )
                  : null,
          incIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: buttonArrangement == ButtonArrangement.rightEnd
                ? BorderRadius.only(
                    topRight: Radius.circular(5),
                  )
                : buttonArrangement == ButtonArrangement.incLeftDecRight
                    ? BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      )
                    : buttonArrangement == ButtonArrangement.incRightDecLeft
                        ? BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          )
                        : BorderRadius.only(
                            topLeft: Radius.circular(5),
                          ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          decIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: buttonArrangement == ButtonArrangement.rightEnd
                ? BorderRadius.only(
                    bottomRight: Radius.circular(5),
                  )
                : buttonArrangement == ButtonArrangement.incLeftDecRight
                    ? BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      )
                    : buttonArrangement == ButtonArrangement.incRightDecLeft
                        ? BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          )
                        : BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                          ),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          textAlign: textAlign,
        );

  /// {@macro prefab_doc} rounded/circular buttons.
  ///
  /// ![NumberInputPrefabbed.roundedButtons](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/pre_rounded.gif)
  ///
  NumberInputPrefabbed.roundedButtons({
    required TextEditingController controller,
    Key? key,
    bool enabled = true,
    ButtonArrangement buttonArrangement = ButtonArrangement.rightEnd,
    num min = 0,
    num max = double.infinity,
    num initialValue = 0,
    num incDecFactor = 1,
    bool isInt = true,
    AutovalidateMode autovalidateMode = AutovalidateMode.always,
    bool enableMinMaxClamping = true,
    InputDecoration? numberFieldDecoration,
    Decoration widgetContainerDecoration = const BoxDecoration(),
    FormFieldValidator<String>? validator,
    TextStyle? style,
    IconData incIcon = Icons.arrow_drop_up,
    IconData decIcon = Icons.arrow_drop_down,
    int fractionDigits = 2,
    double scaleWidth = 1.0,
    double scaleHeight = 1.0,
    double incIconSize = 27,
    double decIconSize = 27,
    Color? decIconColor,
    Color? incIconColor,
    DiffIncDecCallBack? onDecrement,
    DiffIncDecCallBack? onIncrement,
    ValueCallBack? onSubmitted,
    ValueCallBack? onChanged,
    bool separateIcons = true,
    Color incDecBgColor = Colors.lightGreen,
    TextAlign textAlign = TextAlign.center,
  }) : super(
          controller: controller,
          key: key,
          enabled: enabled,
          min: min,
          max: max,
          initialValue: initialValue,
          incDecFactor: incDecFactor,
          isInt: isInt,
          autovalidateMode: autovalidateMode,
          enableMinMaxClamping: enableMinMaxClamping,
          buttonArrangement: buttonArrangement,
          numberFieldDecoration: numberFieldDecoration,
          widgetContainerDecoration: widgetContainerDecoration,
          validator: validator,
          style: style,
          incIcon: incIcon,
          decIcon: decIcon,
          fractionDigits: fractionDigits,
          scaleHeight: scaleHeight,
          scaleWidth: scaleWidth,
          incIconSize: incIconSize,
          decIconSize: decIconSize,
          decIconColor: decIconColor,
          incIconColor: incIconColor,
          onDecrement: onDecrement,
          onIncrement: onIncrement,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          separateIcons: separateIcons,
          incDecBgColor: incDecBgColor,
          incIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          decIconDecoration: BoxDecoration(
            color: incDecBgColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(
              color: Colors.black,
              width: 0.25,
            ),
          ),
          textAlign: textAlign,
        );
}
