import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A definition for the callback function.
/// This is the expected function definition for the callbacks after increment and decrement.
/// The callback will be passed the new value.
/// The same can be read as a string from [NumberInputWithIncrementDecrement.controller].
typedef void DiffIncDecCallBack(num newValue);

/// This is the expected function definition for the callbacks via onSubmitted.
/// The callback will be passed the new value.
typedef void ValueCallBack(num newValue);

/// A set of button arrangements for the widget.
enum ButtonArrangement {
  /// Places both the buttons to the left of the text field.
  leftEnd,

  /// Places both the buttons to the right of the text field.
  rightEnd,

  /// Places increment button to the left and decrement button to the right.
  incLeftDecRight,

  /// Places increment button to the right and decrement button to the left.
  incRightDecLeft,
}

/// {@template core_widget_doc}
/// A simple widget that wraps a TextFormField, exposes it as a number field and
/// adds buttons to increment and decrement the numeric value. Performs some
/// basic validation, formatting to [fractionDigits] and clamping the values
/// between [min] and [max] when enabled through [enableMinMaxClamping].
///
/// e.g. Default widget appearance.
///
/// ![NumberInputWithIncrementDecrement](https://raw.githubusercontent.com/Abhilash-Chandran/number_inc_dec/doc-assets/gifs/example1.gif)
///
/// {@endtemplate}

class NumberInputWithIncrementDecrement extends StatefulWidget {
  /// Key to be used for this widget.
  final Key? key;

  /// Whether the user is able to interact or not
  final bool enabled;

  /// Provide a custom controller.
  final TextEditingController controller;

  /// Decides the button placement using [ButtonArrangement].
  /// Defaults to [ButtonArrangement.rightEnd]
  final ButtonArrangement buttonArrangement;

  /// Minimum value allowed for this field. Defaults to zero.
  final num min;

  /// Maximum value allowed for this field. Defaults to `double.infinity`.
  final num max;

  /// A factor by which the numeric value should be incremented or decremented.
  /// e.g. Setting `incDecFactor=0.5` increments or decrement the number field by 0.5.
  /// Defaults to 1.
  final num incDecFactor;

  /// Initial value for the number input field. Defaults to zero.
  final num initialValue;

  /// Decides if the field only accepts integer values.
  /// Defaults to true.
  final bool isInt;

  /// Passed to [TextFormField.autovalidateMode]
  /// defaults to [AutovalidateMode.always]
  final AutovalidateMode autovalidateMode;

  /// Setting this to [true] clamps the entered value to the [min] and [max]
  /// if all the validations are successful.
  final bool enableMinMaxClamping;

  /// Decoration for the TextFormField.
  /// Defaults to a simple outline border.
  final InputDecoration? numberFieldDecoration;

  /// Decoration for the whole widget.
  /// defaults to a simple container with rounded border.
  final Decoration? widgetContainerDecoration;

  /// validators for this field.
  /// Defaults to [_NumberInputWithIncrementDecrementState._defaultValidator] validator
  /// based on the values of [min] and [max] field.
  /// Note: These values default to [0] and [double.infinity] respectively.
  ///
  /// ```dart
  /// String _minMaxValidator(String value) {
  ///    return num.parse(value) < widget.min || num.parse(value) > widget.max
  ///        ? 'Value should be between ${widget.min} and ${widget.max}'
  ///        : null;
  ///  }
  /// ```
  final FormFieldValidator<String>? validator;

  /// The [TextStyle] that will passed down to [TextFormField.style].
  /// This is the style of the text being edited.
  ///
  /// For e.g following will make the numbers appear green.
  /// ````dart
  /// NumberInputPrefabbed.squaredButtons(
  ///   controller: TextEditingController(),
  ///   style: TextStyle(
  ///         color: Colors.green,
  ///         fontSize: 28,
  ///   ),
  /// );
  /// ```
  final TextStyle? style;

  /// Decoration for the Increment Icon
  /// Defaults to a black border in the bottom.
  final Decoration? incIconDecoration;

  /// Decoration for the Decrement Icon
  /// Defaults to null;
  final Decoration? decIconDecoration;

  /// Icon to be used for Increment button.
  final IconData incIcon;

  /// Icon size to be used for Increment button.
  /// Defaults to size defined in IconTheme
  final double? incIconSize;

  /// Icon color to be used for Increment button.
  /// Defaults to color defined in IconTheme
  final Color? incIconColor;

  /// A call back function to be called on successful increment.
  /// This will not be called if the internal validators fail.
  final DiffIncDecCallBack? onIncrement;

  /// A call back function to be called on successful submit.
  /// This will not be called if the internal validators fail.
  final ValueCallBack? onSubmitted;

  /// A call back function to be called every time the number is changed
  /// manually. This will not be called if the internal validators fail.
  final ValueCallBack? onChanged;

  /// Icon to be used for Decrement button.
  final IconData? decIcon;

  /// Icon size to be used for Decrement button.
  /// Defaults to size defined in IconTheme
  final double? decIconSize;

  /// Icon color to be used for Decrement button.
  /// Defaults to color defined in IconTheme
  final Color? decIconColor;

  /// A call back function to be called on successful decrement.
  /// This will not be called if the internal validators fail.
  final DiffIncDecCallBack? onDecrement;

  /// No of digits after decimal point.
  /// Defaults to value of 2 for non int fields.
  /// Should be between 0 and 20 inclusively.
  final int fractionDigits;

  /// A scaling factor for the width of the widget.
  /// Defaults to 1.
  final double scaleWidth;

  /// A scaling factor for the height of the widget.
  /// Defaults to 1.
  final double scaleHeight;

  /// Show a transparent separator between the increment & decrement buttons.
  /// Defaults to false.
  final bool separateIcons;

  /// Background color of increment decrement buttons.
  final Color? incDecBgColor;

  /// Alignment of the number in the text field.
  /// Defaults to [TextAlign.center]
  final TextAlign textAlign;

  /// {@macro core_widget_doc}
  NumberInputWithIncrementDecrement({
    required this.controller,
    this.key,
    this.enabled = true,
    this.buttonArrangement = ButtonArrangement.rightEnd,
    this.min = 0,
    this.max = double.maxFinite,
    this.initialValue = 0,
    this.incDecFactor = 1,
    this.isInt = true,
    this.autovalidateMode = AutovalidateMode.always,
    this.enableMinMaxClamping = true,
    this.numberFieldDecoration,
    this.widgetContainerDecoration,
    this.validator,
    this.style,
    this.incIcon = Icons.arrow_drop_up,
    this.decIcon = Icons.arrow_drop_down,
    this.fractionDigits = 2,
    this.scaleWidth = 1.0,
    this.scaleHeight = 1.0,
    this.incIconSize,
    this.decIconSize,
    this.decIconColor,
    this.incIconColor,
    this.onDecrement,
    this.onIncrement,
    this.onSubmitted,
    this.onChanged,
    this.separateIcons = false,
    this.decIconDecoration,
    this.incIconDecoration,
    this.incDecBgColor,
    this.textAlign = TextAlign.center,
  });

  @override
  _NumberInputWithIncrementDecrementState createState() =>
      _NumberInputWithIncrementDecrementState();
}

class _NumberInputWithIncrementDecrementState
    extends State<NumberInputWithIncrementDecrement> {
  late TextEditingController _controller;
  final _formFieldKey = GlobalKey<FormFieldState>();
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    //  Setting the initial value for the field.
    _controller.text = widget.isInt
        ? widget.initialValue.toString()
        : widget.initialValue.toStringAsFixed(widget.fractionDigits);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onChanged(String newValue) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(Duration(milliseconds: 750), () {
      if (_defaultValidator(newValue) == null) {
        var parsedAndClamped =
            _clampAndUpdate(_tryParse(newValue), widget.enableMinMaxClamping);
        if (widget.onChanged != null) {
          widget.onChanged!(parsedAndClamped);
        }
      }
    });
  }

  void _onSubmitted(String newValue) {
    var parsedAndClamped =
        _clampAndUpdate(_tryParse(newValue), widget.enableMinMaxClamping);
    if (this.widget.onSubmitted != null &&
        _formFieldKey.currentState != null &&
        _formFieldKey.currentState!.isValid) {
      this.widget.onSubmitted!(parsedAndClamped);
    }
  }

  /// Handling decimal values via reg exp is tricky and parsing directly and
  /// handling null is easier.
  ///
  /// So setup a regexp formatter only for integer fields.
  /// For decimal cases default validator which tries to parse will raise an
  /// error if it fails.
  List<TextInputFormatter> _digitFormatters() {
    return <TextInputFormatter>[
      widget.min.isNegative
          ? FilteringTextInputFormatter.allow(
              RegExp(r'[\-]?\d*'),
              replacementString: _controller.text,
            )
          : FilteringTextInputFormatter.digitsOnly
    ];
  }

  String? _defaultValidator(String? value) {
    final parsed = value != null ? num.tryParse(value) : null;
    if (parsed == null && value != null && (value.isNotEmpty && value != '-')) {
      return '$value is an invalid ${widget.isInt ? 'integer' : 'decimal'} value.';
    } else if (parsed != null &&
        !widget.enableMinMaxClamping &&
        (parsed < widget.min || parsed > widget.max)) {
      return 'Value should be between ${widget.min} and ${widget.max}';
    } else if (parsed != null && _stepMismatch(parsed)) {
      // based on html input implementation
      // https://github.com/chromium/chromium/blob/f84a9127dd42298eaca617d6838d5715bada744e/third_party/blink/renderer/core/html/forms/input_type.cc#L455
      num candidate1 = _clamByStep(parsed);
      num candidate2 = candidate1 < parsed
          ? candidate1 + widget.incDecFactor
          : candidate1 - widget.incDecFactor;
      if (candidate2.isInfinite ||
          candidate2 < widget.min ||
          candidate2 > widget.max) {
        return 'Invalid ! Nearest valid value: ${numToString(candidate1)}';
      }
      if (candidate1 < candidate2) {
        return 'Invalid ! Nearest valid values: ${numToString(candidate1)} and ${numToString(candidate2)}';
      }
      return 'Invalid ! Nearest valid values: ${numToString(candidate2)} and ${numToString(candidate1)}';
    }
    return null;
  }

  /// This is a relaxed reImplementation of stepMismatch used in Chromium for
  /// input type=number element. In our implementation the step value is set in
  /// the parameter [widget.incDecFactor]
  ///
  /// Check here: in step_range.cc
  /// https://github.com/chromium/chromium/blob/60b6acc12a2369e970f4e2fa2e3845a8e2f85de7/third_party/blink/renderer/core/html/forms/step_range.cc#L146
  bool _stepMismatch(num newValue) {
    // In the actual of chrome implementation it uses the default value as the
    // fall back hence it is followed here for correctness.
    num stepBase = widget.min;
    num value = (newValue - stepBase).abs();
    if (value.isInfinite) return false;
    // For time being ignoring the system limit of double.
    num remainder = (value -
            widget.incDecFactor * (value / widget.incDecFactor).roundToDouble())
        .abs();

    num acceptableError = widget.isInt ? 0 : widget.incDecFactor / 153;
    return remainder > acceptableError &&
        remainder < (widget.incDecFactor - acceptableError);
  }

  num _roundByStep(num value) {
    return widget.min +
        ((value - widget.min) / widget.incDecFactor).round() *
            widget.incDecFactor;
  }

  /// ReImplementation from
  ///
  /// https://github.com/chromium/chromium/blob/60b6acc12a2369e970f4e2fa2e3845a8e2f85de7/third_party/blink/renderer/core/html/forms/step_range.cc#L81
  num _clamByStep(num value) {
    num inRangeValue = value.clamp(widget.min, widget.max);

    // Rounds inRangeValue to stepBase + N * step.
    num roundedByStep = _roundByStep(inRangeValue);
    num clampedValue = roundedByStep > widget.max
        ? roundedByStep - widget.incDecFactor
        : (roundedByStep < widget.min)
            ? roundedByStep + widget.incDecFactor
            : roundedByStep;

    // clampedValue can be outside of [min, max] if incDecFactor is huge.
    if (clampedValue < widget.min || clampedValue > widget.max)
      return inRangeValue;
    return clampedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform:
          Matrix4.diagonal3Values(widget.scaleWidth, widget.scaleHeight, 1.0),
      child: Container(
        decoration: widget.widgetContainerDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.blueGrey,
                width: 2.0,
              ),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (widget.buttonArrangement == ButtonArrangement.incLeftDecRight)
              _buildIncrementButton(),
            if (widget.buttonArrangement == ButtonArrangement.incRightDecLeft)
              _buildDecrementButton(),
            if (widget.buttonArrangement == ButtonArrangement.leftEnd)
              _buildColumnOfButtons(),
            Expanded(
              flex: 1,
              child: TextFormField(
                key: _formFieldKey,
                validator: widget.validator ?? _defaultValidator,
                style: widget.style,
                enabled: widget.enabled,
                textAlign: widget.textAlign,
                autovalidateMode: widget.autovalidateMode,
                decoration: widget.numberFieldDecoration ??
                    InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                controller: _controller,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: !widget.isInt,
                  signed: true,
                ),
                inputFormatters: widget.isInt ? _digitFormatters() : null,
                onChanged: _onChanged,
                onFieldSubmitted: _onSubmitted,
              ),
            ),
            if (widget.buttonArrangement == ButtonArrangement.incLeftDecRight)
              _buildDecrementButton(),
            if (widget.buttonArrangement == ButtonArrangement.incRightDecLeft)
              _buildIncrementButton(),
            if (widget.buttonArrangement == ButtonArrangement.rightEnd)
              _buildColumnOfButtons(),
          ],
        ),
      ),
    );
  }

  Column _buildColumnOfButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIncrementButton(),
        if (widget.separateIcons)
          Container(
            color: Colors.transparent,
            height: 2,
          ),
        _buildDecrementButton(),
      ],
    );
  }

  Widget _buildDecrementButton() {
    return Container(
      decoration: widget.decIconDecoration ??
          BoxDecoration(
            border: widget.buttonArrangement == ButtonArrangement.leftEnd ||
                    widget.buttonArrangement == ButtonArrangement.rightEnd
                ? null
                : Border(
                    top: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black),
                  ),
          ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: widget.incDecBgColor,
          child: Icon(
            widget.decIcon,
            size: widget.decIconSize,
            color: widget.decIconColor,
          ),
          onTap: !widget.enabled
              ? null
              : () {
                  var currentValue = _tryParse(_controller.text);
                  // It better to do this check after parsing otherwise decrement
                  // would raise error.
                  if (currentValue == null) return;
                  currentValue = currentValue - widget.incDecFactor;
                  // always clamp for inc/dec button action.
                  currentValue = _clampAndUpdate(currentValue, true);
                  // decrement callback
                  if (widget.onDecrement != null) {
                    widget.onDecrement!(currentValue);
                  }
                },
        ),
      ),
    );
  }

  Widget _buildIncrementButton() {
    return Container(
      decoration: widget.incIconDecoration ??
          BoxDecoration(
            border: widget.buttonArrangement == ButtonArrangement.leftEnd ||
                    widget.buttonArrangement == ButtonArrangement.rightEnd
                ? Border(
                    bottom: BorderSide(color: Colors.black),
                  )
                : Border(
                    top: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black),
                  ),
          ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: widget.incDecBgColor,
          child: Icon(
            widget.incIcon,
            size: widget.incIconSize,
            color: widget.incIconColor,
          ),
          onTap: !widget.enabled
              ? null
              : () {
                  var currentValue = _tryParse(_controller.text);
                  // It better to do this check after parsing otherwise increment
                  // would raise error.
                  if (currentValue == null) return;
                  currentValue = currentValue + widget.incDecFactor;
                  // always clamp for inc/dec button action.
                  currentValue = _clampAndUpdate(currentValue, true);
                  // decrement callback
                  if (widget.onIncrement != null) {
                    widget.onIncrement!(currentValue);
                  }
                },
        ),
      ),
    );
  }

  /// try to parse the given string into a number.
  num? _tryParse(String value) {
    final newValue = num.tryParse(value);
    return newValue;
  }

  num _clampAndUpdate(var currentValue, bool clamp) {
    // Perform clamping only if explicitly enabled.
    currentValue = clamp && currentValue != null
        ? _clamByStep(currentValue)
        : currentValue ?? 0;
    // Covert the number to string and apply fraction restriction if necessary.
    // Also handles null cases when the parsing fails.
    var currentValAsStr = numToString(currentValue);
    // Sets the text to the controller and corrects the cursor position.
    _controller.value = TextEditingValue(
      text: currentValAsStr,
      selection: TextSelection.fromPosition(
        TextPosition(offset: currentValAsStr.length),
      ),
    );
    return currentValue;
  }

  String numToString(currentValue) {
    return (widget.isInt
            ? currentValue?.toString()
            : currentValue?.toStringAsFixed(widget.fractionDigits)) ??
        _controller.text ??
        '';
  }
}
