# number_inc_dec

A flutter widget that accepts numbers along with buttons to increment and decrement. This is a simple TextFormField with buttons and logic to handle factored increments/decrements and with some additional properties like minimum and maximum allowed value. The factor of incrments is also configurable.

## Getting Started

1. Install the latest version of the package by adding it to `pubspec.yaml` as noted in the install page.
2. Import the `number_inc_dec.dart` as follows `import 'package:number_inc_dec/number_inc_dec.dart';`.
3. Utilize the `NumberIncrementDecrement` as usual like any other flutter widget.
   - e.g.
   ```dart
   NumberInputWithIncrementDecrement(
        controller: TextEditingController(),
        min: -3,
        max: 3,
    ),
   ```

## Configurable options

NumberIncrmentDecrement widget comes with some configurable options.

| Property                  | Type                  | Purpose                                                                                                                                                                                                                  | Default Value                                                                                                    |
| ------------------------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| controller                | TextEditingController | A mandatory text editing controller to be used by the TextFormField.                                                                                                                                                     | This is a mandatory field because its the easiest way to access the field's value, when not using a Form widget. |
| min                       | num                   | Minimum acceptable value for this numeric field. Note: No error message will be shown. To show error a `validator` can be used and the widget should wrapped in `Form` widget.                                           | 0                                                                                                                |
| max                       | num                   | Maximum acceptable value for this numeric field. Note: No error message will be shown. To show error a `validator` can be used and the widget should wrapped in `Form` widget.                                           | double.infinity                                                                                                  |
| incDecFactor              | num                   | Factor by which the increment or decrement should happen. e.g. setting it 0.5 increments/decrements the field value by 0.5.                                                                                              | 1                                                                                                                |
| initialValue              | num                   | An initial value to be set to the field.                                                                                                                                                                                 | 0                                                                                                                |
| isInt                     | bool                  | A flag to indicate if the field only accepts integer values. To use double values set this field to false.                                                                                                               | true                                                                                                             |
| numberFieldDecoration     | InputDecoration       | This decoration will be used by the TextFormField to handle its decoration.                                                                                                                                              | An `InputDecoration` with an `OutlinInputBorder` to create a circular border.                                    |
| widgetContainerDecoration | Decoration            | This is the decoration for the `Container` that wraps this widget.                                                                                                                                                       | A simple `BoxDecoration` with a circular border in `Colors.bluegrey` color.                                      |
| validator                 | FormFieldValidator    | A validator function which accepts a string and performs some validation. This is called when this field is wrapped inside a `Form` widget and called during its validate cycle. The error message to shown is set here. |                                                                                                                  |
| incIcon                   | IconData              | The icon to be used for the increment button.                                                                                                                                                                            | Icons.arrow_drop_up                                                                                              |
| decIcon                   | IconData              | The icon to be used for the decrement button.                                                                                                                                                                            | Icons.arrow_drop_down                                                                                            |
| fractionDigits            | int                   | The number of digits after the decimal point. Used only if `isInt` is `false`.                                                                                                                                           | 2                                                                                                                |

## Demo

![demo](demo.gif)
